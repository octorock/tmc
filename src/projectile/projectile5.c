
#include "entity.h"
#include "enemy.h"
#include "player.h"
#include "room.h"
#include "coord.h"

extern void (*const gUnk_08129718[])(Entity*);

extern void (*const gUnk_0812972C[])(Entity*);

extern u32 sub_080002E0(u32, u32);

extern Hitbox gUnk_08129734;

void Projectile5(Entity* this) {
    gUnk_08129718[GetNextFunction(this)](this);
}

void sub_080A86D8(Entity* this) {
    gUnk_0812972C[this->action](this);
}

void sub_080A86F0(Entity* this) {
    u8* pbVar2;

    if (this->parent == NULL) {
        DeleteThisEntity();
    } else {
        pbVar2 = &this->parent->field_0x82.HALF.HI;
        if ((this->parent->field_0x82.HALF.HI & 0x3f) == 3) {
            if (gPlayerState.hurtBlinkSpeed != 0) {
                if (sub_080002E0(TILE(this->x.HALF.HI, this->y.HALF.HI), gPlayerEntity.collisionLayer) == 0) {
                    if (this->bitfield == 0x80) {
                        *pbVar2 = *pbVar2 & 0x7f;
                        DeleteThisEntity();
                    }
                }
            }
        } else {
            DeleteEntity(this);
        }
    }
}

void sub_080A8770(Entity* this) {
    this->action = 1;
    this->field_0x3c |= 0x10;
    this->hitbox = &gUnk_08129734;
}

void sub_080A878C(Entity* this) {
    Entity* parent;

    parent = this->parent;
    if (parent == NULL) {
        DeleteThisEntity();
    }
    if (parent->next == NULL) {
        DeleteThisEntity();
    }
    if ((parent->field_0x82.HALF.HI & 0x7f) != 3) {
        DeleteThisEntity();
    }
    CopyPosition(parent, this);
    this->height.HALF.HI += 2;
}

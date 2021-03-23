#include "entity.h"
#include "audio.h"
#include "functions.h"
#include "player.h"
#include "room.h"

extern void (*const gUnk_08109AC8[])(Entity*);
extern Hitbox gUnk_08109AD0;
extern u8 gUnk_08003E44;

void sub_0805FC74(Entity*);

void PlayerItem14(Entity* this) {
    gUnk_08109AC8[this->action](this);
}

void sub_0805FBE8(Entity* this) {
    CopyPosition(&gPlayerEntity, this);
    this->action++;
    this->spriteSettings.b.draw = TRUE;
    this->field_0x3c = gPlayerEntity.field_0x3c + 1;
    this->hitbox = &gUnk_08109AD0;
    this->speed = 0x380;
    this->animationState = this->animationState & 0x7f;
    if (this->collisionLayer == 2) {
        this->type2 = 1;
    }
    this->direction = this->animationState << 2;
    *(u32*)&this->field_0x6c = 0x3c;
    InitializeAnimation(this, (this->animationState >> 1) + 0xc);
    sub_0801766C(this);
    sub_0806F69C(this);
    sub_0805FC74(this);
    SoundReq(SFX_ITEM_SWORD_BEAM);
}

void sub_0805FC74(Entity* this) {
    int iVar1;

    if (--*(int*)&this->field_0x6c != -1) {
        GetNextFrame(this);
        sub_0806F69C(this);
        this->actionDelay++;
        if (this->type2 == 0) {
            sub_0800451C(this);
        }
        if (!sub_080002F0(COORD_TO_TILE(this), gPlayerEntity.collisionLayer, 0x80) &&
            sub_080040D8(this, &gUnk_08003E44, this->x.HALF.HI, this->y.HALF.HI)) {
            CreateFx(this, 0x19, 0);
            DeleteThisEntity();
        }
        if (this->bitfield != 0) {
            CreateFx(this, 0x19, 0);
            DeleteThisEntity();
        }
    } else {
        DeleteThisEntity();
    }
}

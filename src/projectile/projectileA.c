
#include "entity.h"
#include "enemy.h"
#include "player.h"
#include "functions.h"
#include "random.h"
#include "audio.h"

extern void (*const gUnk_08129954[])(Entity*);

extern void (*const gUnk_08129968[])(Entity*);

void sub_080A90D8(Entity*);

extern void sub_0806F5BC(Entity*, u32, u32);
extern u32 sub_080041DC(Entity*, u32, u32);

extern s8 gUnk_08129978[];
extern s8 gUnk_08129980[];
extern s8 gUnk_08129988[];

void ProjectileA(Entity* this) {
    gUnk_08129954[GetNextFunction(this)](this);
}

void sub_080A8DDC(Entity* this) {
    if (((this->type != 3) && ((this->bitfield & 0x80) != 0)) && ((this->bitfield & 0x7f) != 0x1e)) {
        this->action = 3;
        this->flags &= 0x7f;
        InitializeAnimation(this, 0x53);
    }
    gUnk_08129968[this->action](this);
}

void sub_080A8E28(Entity* this) {
    u32 uVar1;
    s32 iVar2;

    this->action = 1;
    this->field_0x20 = -0x10000;
    if (this->type != 3) {
        CopyPosition(this->parent, this);
        sub_0806F5BC(this, 0x1000, this->direction);
        this->height.WORD = this->parent->y.WORD - this->attachedEntity->y.WORD;
        this->y.WORD -= this->height.WORD;
        InitializeAnimation(this, 0x51);
        SoundReq(SFX_1B5);
    }

    switch (this->type) {
        case 0:
        case 1:
            iVar2 = sub_080041DC(this, gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI);
            if (this->type == 1) {
                uVar1 = Random() & 0x1ff;
                if ((gScreenTransition.frameCount & 1U) == 0) {
                    iVar2 += uVar1;
                } else {
                    iVar2 -= uVar1;
                }
            }
            if (iVar2 < 0x20) {
                iVar2 = 0x20;
            } else if (0x400 < iVar2) {
                iVar2 = 0x400;
            }
            this->field_0x20 = this->height.WORD / (iVar2 << 8) << 0xd;
            this->field_0xf = 0x1e;
            break;
        case 2:
            this->field_0x20 = (this->height.WORD / 0x18000) << 0xc;
            break;
        case 3:
            this->height.WORD = 0xff600000;
            uVar1 = (Random() & 3) * 2;
            this->x.HALF.HI = gUnk_08129978[uVar1] + this->x.HALF.HI;
            this->y.HALF.HI = gUnk_08129978[uVar1 + 1] + this->y.HALF.HI;
            if ((uVar1 & 2) != 0) {
                this->x.HALF.HI += gUnk_08129988[Random() & 0xf];
                this->y.HALF.HI += gUnk_08129980[Random() & 7];
            } else {
                this->x.HALF.HI += gUnk_08129980[Random() & 7];
                this->y.HALF.HI += gUnk_08129988[Random() & 0xf];
            }
            sub_08004168(this);
            InitializeAnimation(this, 0);
            break;
    }
}

void sub_080A8FB8(Entity* this) {
    if (this->type == 3) {
        if (sub_08003FC4(this, 0x1800) == 0) {
            sub_08008790(this, 7);
            CreateFx(this, 4, 0);
            DeleteThisEntity();
        }
    } else {
        GetNextFrame(this);
        sub_0806F69C(this);
        if ((this->type != 2) && (--this->field_0xf == 0xff)) {
            this->field_0xf = 0x1e;
            sub_08004596(this, GetFacingDirection(this, &gPlayerEntity));
        }
        if (sub_08003FC4(this, 0) == 0) {
            this->action = 2;
            sub_080A90D8(this);
            if (this->type == 2) {
                this->actionDelay = 0xf;
                InitializeAnimation(this, 0x54);
            } else {
                InitializeAnimation(this, 0x52);
            }
        }
    }
}

void sub_080A9058(Entity* this) {
    GetNextFrame(this);
    if (this->type == 2) {
        if (--this->actionDelay == 0xff) {
            this->flags &= 0x7f;
            this->action = 3;
            InitializeAnimation(this, 0x55);
        } else {
            sub_0806F69C(this);
            sub_080A90D8(this);
        }
    } else {
        if ((this->frames.all & 0x80) != 0) {
            this->action = 3;
            this->flags &= 0x7f;
            InitializeAnimation(this, 0x53);
        }
    }
}

void sub_080A90BC(Entity* this) {
    GetNextFrame(this);
    if ((this->frames.all & 0x80) != 0) {
        DeleteThisEntity();
    }
}

void sub_080A90D8(Entity* this) {
    u32 tmp;

    if (this->field_0x74.HWORD != TILE(this->x.HALF.HI, this->y.HALF.HI)) {
        this->field_0x74.HWORD = TILE(this->x.HALF.HI, this->y.HALF.HI);
        tmp = GetTileTypeByEntity(this);
        if ((tmp == 0x13) || (tmp == 0x34)) {
            sub_0807B7D8(0x34c, TILE(this->x.HALF.HI, this->y.HALF.HI), this->collisionLayer);
        }
    }
}

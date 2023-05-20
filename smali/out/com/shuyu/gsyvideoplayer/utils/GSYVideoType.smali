.class public Lcom/shuyu/gsyvideoplayer/utils/GSYVideoType;
.super Ljava/lang/Object;
.source "GSYVideoType.java"


# static fields
.field public static final GLSURFACE:I = 0x2

.field private static MEDIA_CODEC_FLAG:Z = false

.field public static final SCREEN_MATCH_FULL:I = -0x4

.field public static final SCREEN_TYPE_16_9:I = 0x1

.field public static final SCREEN_TYPE_4_3:I = 0x2

.field public static final SCREEN_TYPE_DEFAULT:I = 0x0

.field public static final SCREEN_TYPE_FULL:I = 0x4

.field public static final SUFRACE:I = 0x1

.field public static final TEXTURE:I = 0x0

.field private static TYPE:I = 0x0

.field private static sRenderType:I = 0x0

.field private static sTextureMediaPlay:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableMediaCodec()V
    .registers 1

    const/4 v0, 0x0

    .line 65
    sput-boolean v0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoType;->MEDIA_CODEC_FLAG:Z

    return-void
.end method

.method public static disableMediaCodecTexture()V
    .registers 1

    const/4 v0, 0x0

    .line 79
    sput-boolean v0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoType;->sTextureMediaPlay:Z

    return-void
.end method

.method public static enableMediaCodec()V
    .registers 1

    const/4 v0, 0x1

    .line 58
    sput-boolean v0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoType;->MEDIA_CODEC_FLAG:Z

    return-void
.end method

.method public static enableMediaCodecTexture()V
    .registers 1

    const/4 v0, 0x1

    .line 72
    sput-boolean v0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoType;->sTextureMediaPlay:Z

    return-void
.end method

.method public static getRenderType()I
    .registers 1

    .line 109
    sget v0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoType;->sRenderType:I

    return v0
.end method

.method public static getShowType()I
    .registers 1

    .line 97
    sget v0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoType;->TYPE:I

    return v0
.end method

.method public static isMediaCodec()Z
    .registers 1

    .line 86
    sget-boolean v0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoType;->MEDIA_CODEC_FLAG:Z

    return v0
.end method

.method public static isMediaCodecTexture()Z
    .registers 1

    .line 93
    sget-boolean v0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoType;->sTextureMediaPlay:Z

    return v0
.end method

.method public static setRenderType(I)V
    .registers 1

    .line 118
    sput p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoType;->sRenderType:I

    return-void
.end method

.method public static setShowType(I)V
    .registers 1

    .line 104
    sput p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoType;->TYPE:I

    return-void
.end method

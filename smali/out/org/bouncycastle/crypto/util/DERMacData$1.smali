.class synthetic Lorg/bouncycastle/crypto/util/DERMacData$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/DERMacData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$bouncycastle$crypto$util$DERMacData$Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lorg/bouncycastle/crypto/util/DERMacData$Type;->values()[Lorg/bouncycastle/crypto/util/DERMacData$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/bouncycastle/crypto/util/DERMacData$1;->$SwitchMap$org$bouncycastle$crypto$util$DERMacData$Type:[I

    :try_start_9
    sget-object v0, Lorg/bouncycastle/crypto/util/DERMacData$1;->$SwitchMap$org$bouncycastle$crypto$util$DERMacData$Type:[I

    sget-object v1, Lorg/bouncycastle/crypto/util/DERMacData$Type;->UNILATERALU:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/DERMacData$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lorg/bouncycastle/crypto/util/DERMacData$1;->$SwitchMap$org$bouncycastle$crypto$util$DERMacData$Type:[I

    sget-object v1, Lorg/bouncycastle/crypto/util/DERMacData$Type;->BILATERALU:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/DERMacData$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lorg/bouncycastle/crypto/util/DERMacData$1;->$SwitchMap$org$bouncycastle$crypto$util$DERMacData$Type:[I

    sget-object v1, Lorg/bouncycastle/crypto/util/DERMacData$Type;->UNILATERALV:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/DERMacData$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v0, Lorg/bouncycastle/crypto/util/DERMacData$1;->$SwitchMap$org$bouncycastle$crypto$util$DERMacData$Type:[I

    sget-object v1, Lorg/bouncycastle/crypto/util/DERMacData$Type;->BILATERALV:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/util/DERMacData$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    return-void
.end method

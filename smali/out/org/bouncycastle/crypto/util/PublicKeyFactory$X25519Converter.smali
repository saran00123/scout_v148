.class Lorg/bouncycastle/crypto/util/PublicKeyFactory$X25519Converter;
.super Lorg/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/PublicKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "X25519Converter"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;-><init>(Lorg/bouncycastle/crypto/util/PublicKeyFactory$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/crypto/util/PublicKeyFactory$1;)V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/util/PublicKeyFactory$X25519Converter;-><init>()V

    return-void
.end method


# virtual methods
.method getPublicKeyParameters(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Ljava/lang/Object;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 5

    new-instance v0, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    const/16 v1, 0x20

    invoke-static {p1, p2, v1}, Lorg/bouncycastle/crypto/util/PublicKeyFactory;->access$1400(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Ljava/lang/Object;I)[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;-><init>([BI)V

    return-object v0
.end method

.class final enum Lorg/bouncycastle/crypto/PasswordConverter$3;
.super Lorg/bouncycastle/crypto/PasswordConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/PasswordConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/PasswordConverter;-><init>(Ljava/lang/String;ILorg/bouncycastle/crypto/PasswordConverter$1;)V

    return-void
.end method


# virtual methods
.method public convert([C)[B
    .registers 2

    invoke-static {p1}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object p1

    return-object p1
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    const-string v0, "PKCS12"

    return-object v0
.end method
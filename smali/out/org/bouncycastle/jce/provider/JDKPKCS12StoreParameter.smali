.class public Lorg/bouncycastle/jce/provider/JDKPKCS12StoreParameter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# instance fields
.field private outputStream:Ljava/io/OutputStream;

.field private protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

.field private useDEREncoding:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    return-object v0
.end method

.method public isUseDEREncoding()Z
    .registers 2

    iget-boolean v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->useDEREncoding:Z

    return v0
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->outputStream:Ljava/io/OutputStream;

    return-void
.end method

.method public setPassword([C)V
    .registers 3

    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v0, p1}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    return-void
.end method

.method public setProtectionParameter(Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    return-void
.end method

.method public setUseDEREncoding(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->useDEREncoding:Z

    return-void
.end method

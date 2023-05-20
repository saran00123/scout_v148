.class public abstract Lorg/bouncycastle/pqc/crypto/lms/LMSKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

# interfaces
.implements Lorg/bouncycastle/util/Encodable;


# direct methods
.method protected constructor <init>(Z)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public abstract getEncoded()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.class public Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;
.super Ljava/lang/Object;


# instance fields
.field private final lmOTSParam:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field private final lmSigParam:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;->lmSigParam:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;->lmOTSParam:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    return-void
.end method


# virtual methods
.method public getLMOTSParam()Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;->lmOTSParam:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    return-object v0
.end method

.method public getLMSigParam()Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSParameters;->lmSigParam:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    return-object v0
.end method

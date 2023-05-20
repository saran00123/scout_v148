.class public Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final SHA256:Ljava/lang/String; = "SHA256"

.field public static final SHA512:Ljava/lang/String; = "SHA512"

.field public static final SHAKE128:Ljava/lang/String; = "SHAKE128"

.field public static final SHAKE256:Ljava/lang/String; = "SHAKE256"

.field public static final XMSSMT_SHA2_20d2_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_20d2_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_20d4_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_20d4_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_40d2_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_40d2_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_40d4_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_40d4_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_40d8_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_40d8_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_60d12_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_60d12_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_60d3_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_60d3_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_60d6_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_60d6_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_20d2_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_20d2_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_20d4_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_20d4_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_40d2_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_40d2_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_40d4_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_40d4_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_40d8_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_40d8_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_60d12_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_60d12_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_60d3_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_60d3_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_60d6_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_60d6_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;


# instance fields
.field private final height:I

.field private final layers:I

.field private final treeDigest:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const-string v1, "SHA256"

    const/4 v2, 0x2

    const/16 v3, 0x14

    invoke-direct {v0, v3, v2, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_20d2_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_20d4_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const/16 v5, 0x28

    invoke-direct {v0, v5, v2, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_40d2_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v5, v4, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_40d4_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const/16 v6, 0x8

    invoke-direct {v0, v5, v6, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_40d8_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const/4 v7, 0x3

    const/16 v8, 0x3c

    invoke-direct {v0, v8, v7, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_60d3_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const/4 v9, 0x6

    invoke-direct {v0, v8, v9, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_60d6_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const/16 v10, 0xc

    invoke-direct {v0, v8, v10, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_60d12_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const-string v1, "SHA512"

    invoke-direct {v0, v3, v2, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_20d2_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_20d4_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v5, v2, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_40d2_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v5, v4, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_40d4_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v5, v6, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_40d8_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v8, v7, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_60d3_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v8, v9, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_60d6_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v8, v10, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_60d12_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const-string v1, "SHAKE128"

    invoke-direct {v0, v3, v2, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_20d2_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_20d4_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v5, v2, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_40d2_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v5, v4, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_40d4_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v5, v6, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_40d8_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v8, v7, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_60d3_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v8, v9, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_60d6_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v8, v10, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_60d12_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const-string v1, "SHAKE256"

    invoke-direct {v0, v3, v2, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_20d2_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_20d4_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v5, v2, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_40d2_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v5, v4, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_40d4_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v5, v6, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_40d8_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v8, v7, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_60d3_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v8, v9, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_60d6_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v8, v10, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_60d12_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->height:I

    iput p2, p0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->layers:I

    iput-object p3, p0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->treeDigest:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->height:I

    return v0
.end method

.method public getLayers()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->layers:I

    return v0
.end method

.method public getTreeDigest()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->treeDigest:Ljava/lang/String;

    return-object v0
.end method

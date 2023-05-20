.class public final Lcom/taobao/accs/utl/d;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static a:[B

.field private static b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x10

    .line 36
    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/taobao/accs/utl/d;->a:[B

    .line 38
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/taobao/accs/utl/d;->b:Ljava/lang/ThreadLocal;

    .line 39
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v1, Lcom/taobao/accs/utl/d;->a:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/taobao/accs/utl/d;->c:Ljava/security/spec/AlgorithmParameterSpec;

    return-void

    :array_1a
    .array-data 1
        0x52t
        0x16t
        0x32t
        0x2ct
        -0x10t
        0x7ct
        -0x28t
        -0x72t
        -0x57t
        -0x28t
        0x25t
        0x17t
        -0x38t
        0x17t
        -0x21t
        0x4bt
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a([B)[B
    .registers 3

    :try_start_0
    const-string v0, "MD5"

    .line 94
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 95
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 96
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "md5 value Throwable"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

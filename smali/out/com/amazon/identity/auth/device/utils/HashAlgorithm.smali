.class public final enum Lcom/amazon/identity/auth/device/utils/HashAlgorithm;
.super Ljava/lang/Enum;
.source "HashAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/utils/HashAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/utils/HashAlgorithm;

.field public static final enum MD5:Lcom/amazon/identity/auth/device/utils/HashAlgorithm;

.field public static final enum SHA_256:Lcom/amazon/identity/auth/device/utils/HashAlgorithm;


# instance fields
.field private algorithmName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 4
    new-instance v0, Lcom/amazon/identity/auth/device/utils/HashAlgorithm;

    const/4 v1, 0x0

    const-string v2, "MD5"

    invoke-direct {v0, v2, v1, v2}, Lcom/amazon/identity/auth/device/utils/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/utils/HashAlgorithm;->MD5:Lcom/amazon/identity/auth/device/utils/HashAlgorithm;

    .line 5
    new-instance v0, Lcom/amazon/identity/auth/device/utils/HashAlgorithm;

    const/4 v2, 0x1

    const-string v3, "SHA_256"

    const-string v4, "SHA-256"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/identity/auth/device/utils/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/utils/HashAlgorithm;->SHA_256:Lcom/amazon/identity/auth/device/utils/HashAlgorithm;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lcom/amazon/identity/auth/device/utils/HashAlgorithm;

    sget-object v3, Lcom/amazon/identity/auth/device/utils/HashAlgorithm;->MD5:Lcom/amazon/identity/auth/device/utils/HashAlgorithm;

    aput-object v3, v0, v1

    sget-object v1, Lcom/amazon/identity/auth/device/utils/HashAlgorithm;->SHA_256:Lcom/amazon/identity/auth/device/utils/HashAlgorithm;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/identity/auth/device/utils/HashAlgorithm;->$VALUES:[Lcom/amazon/identity/auth/device/utils/HashAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput-object p3, p0, Lcom/amazon/identity/auth/device/utils/HashAlgorithm;->algorithmName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/utils/HashAlgorithm;
    .registers 2

    .line 3
    const-class v0, Lcom/amazon/identity/auth/device/utils/HashAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/utils/HashAlgorithm;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/utils/HashAlgorithm;
    .registers 1

    .line 3
    sget-object v0, Lcom/amazon/identity/auth/device/utils/HashAlgorithm;->$VALUES:[Lcom/amazon/identity/auth/device/utils/HashAlgorithm;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/utils/HashAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/utils/HashAlgorithm;

    return-object v0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/amazon/identity/auth/device/utils/HashAlgorithm;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.class Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;
.super Ljava/lang/Object;
.source "CodeChallengeWorkflow.java"


# static fields
.field private static final ALORITHM_SHA_256:Ljava/lang/String; = "SHA-256"

.field public static final CODE_CHALLENGE_KEY:Ljava/lang/String; = "code_challenge"

.field public static final CODE_CHALLENGE_METHOD_KEY:Ljava/lang/String; = "code_challenge_method"

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.authorization.CodeChallengeWorkflow"

.field private static final PLAIN:Ljava/lang/String; = "plain"

.field private static final SHA_256:Ljava/lang/String; = "S256"

.field private static instance:Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;


# instance fields
.field private codeChallenge:Ljava/lang/String;

.field private codeChallengeMethod:Ljava/lang/String;

.field private codeVerifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private base64UrlEncode([B)Ljava/lang/String;
    .registers 3

    const/16 v0, 0xb

    .line 111
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateCodeChallenge(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "S256"

    .line 68
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1b

    const-string p2, "SHA-256"

    .line 70
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 70
    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 69
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 75
    :cond_1b
    new-instance p1, Ljava/security/NoSuchAlgorithmException;

    const-string p2, "Challenge method is not supported."

    invoke-direct {p1, p2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private generateCodeVerifier()Ljava/lang/String;
    .registers 2

    .line 82
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;->generateRandomOctetSequence()[B

    move-result-object v0

    .line 83
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateRandomOctetSequence()[B
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x20

    .line 98
    new-array v1, v1, [B

    .line 99
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v1
.end method

.method public static getInstance()Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;
    .registers 1

    .line 29
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;->instance:Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;

    if-nez v0, :cond_b

    .line 30
    new-instance v0, Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;->instance:Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;

    .line 33
    :cond_b
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;->instance:Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;

    return-object v0
.end method


# virtual methods
.method public getCodeVerifier()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;->codeVerifier:Ljava/lang/String;

    return-object v0
.end method

.method public getProofKeyParameters()Landroid/os/Bundle;
    .registers 4

    .line 43
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;->generateCodeVerifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;->codeVerifier:Ljava/lang/String;

    :try_start_6
    const-string v0, "S256"

    .line 46
    iput-object v0, p0, Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;->codeChallengeMethod:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;->codeVerifier:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;->codeChallengeMethod:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;->generateCodeChallenge(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;->codeChallenge:Ljava/lang/String;
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_14} :catch_15

    goto :goto_25

    :catch_15
    move-exception v0

    .line 49
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error generating Proof Key parameter"

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "plain"

    .line 50
    iput-object v0, p0, Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;->codeChallengeMethod:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;->codeVerifier:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;->codeChallenge:Ljava/lang/String;

    .line 54
    :goto_25
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;->codeChallengeMethod:Ljava/lang/String;

    const-string v2, "code_challenge_method"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/amazon/identity/auth/device/authorization/CodeChallengeWorkflow;->codeChallenge:Ljava/lang/String;

    const-string v2, "code_challenge"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

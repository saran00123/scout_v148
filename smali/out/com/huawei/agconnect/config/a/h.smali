.class Lcom/huawei/agconnect/config/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/agconnect/config/a/d;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/agconnect/config/a/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/huawei/agconnect/config/a/h;->b:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agc_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/agconnect/config/a/h;->a([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/agconnect/config/a/e;->a([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_21
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_21} :catch_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_21} :catch_22

    return-object p0

    :catch_22
    return-object v0
.end method

.method private static a([B)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-static {p1}, Lcom/huawei/agconnect/config/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p2

    :cond_b
    iget-object v0, p0, Lcom/huawei/agconnect/config/a/h;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/agconnect/config/a/h;->b:Ljava/lang/String;

    const-string v2, "string"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1c

    return-object p2

    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/huawei/agconnect/config/a/h;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_26
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c .. :try_end_26} :catch_27

    return-object p1

    :catch_27
    return-object p2
.end method

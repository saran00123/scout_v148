.class Lcom/huawei/agconnect/config/a/i;
.super Lcom/huawei/agconnect/config/a/h;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;

.field private c:Ljavax/crypto/SecretKey;

.field private d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/huawei/agconnect/config/a/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/huawei/agconnect/config/a/i;->a:Ljava/util/Map;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/agconnect/config/a/i;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/huawei/agconnect/config/a/i;->d:Z

    :try_start_14
    const-string p1, "/AD91D45E3E72DB6989DDCB13287E75061FABCB933D886E6C6ABEF0939B577138"

    invoke-direct {p0, p1}, Lcom/huawei/agconnect/config/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "/B314B3BF013DF5AC4134E880AF3D2B7C9FFBE8F0305EAC1C898145E2BCF1F21C"

    invoke-direct {p0, p2}, Lcom/huawei/agconnect/config/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "/C767BD8FDF53E53D059BE95B09E2A71056F5F180AECC62836B287ACA5793421B"

    invoke-direct {p0, v0}, Lcom/huawei/agconnect/config/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/DCB3E6D4C2CF80F30D89CDBC412C964DA8381BB84668769391FBCC3E329AD0FD"

    invoke-direct {p0, v1}, Lcom/huawei/agconnect/config/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_4b

    if-eqz p2, :cond_4b

    if-eqz v0, :cond_4b

    if-eqz v1, :cond_4b

    invoke-static {p1}, Lcom/huawei/agconnect/config/a/e;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p2}, Lcom/huawei/agconnect/config/a/e;->a(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {v0}, Lcom/huawei/agconnect/config/a/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v1}, Lcom/huawei/agconnect/config/a/e;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/huawei/agconnect/config/a/g;->a([B[B[B[B)Ljavax/crypto/SecretKey;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/agconnect/config/a/i;->c:Ljavax/crypto/SecretKey;

    goto :goto_59

    :cond_4b
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/huawei/agconnect/config/a/i;->d:Z
    :try_end_4e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_14 .. :try_end_4e} :catch_4f
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_14 .. :try_end_4e} :catch_4f

    goto :goto_59

    :catch_4f
    const-string p1, "SecurityResourcesReader"

    const-string p2, "Exception when reading the \'K&I\' for \'Config\'."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/huawei/agconnect/config/a/i;->c:Ljavax/crypto/SecretKey;

    :goto_59
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/huawei/agconnect/config/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static a(Ljavax/crypto/SecretKey;[B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_25

    if-eqz p1, :cond_25

    const/16 v0, 0x11

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x2

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v3, p0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    array-length p0, v0

    add-int/2addr p0, v1

    array-length v3, p1

    array-length v0, v0

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {v2, p1, p0, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p0

    return-object p0

    :cond_25
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "key or cipherText must not be null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    iget-boolean v0, p0, Lcom/huawei/agconnect/config/a/i;->d:Z

    if-nez v0, :cond_d

    invoke-direct {p0, p1}, Lcom/huawei/agconnect/config/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    goto :goto_c

    :cond_b
    move-object p1, p2

    :goto_c
    return-object p1

    :cond_d
    iget-object v0, p0, Lcom/huawei/agconnect/config/a/i;->c:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_19

    const-string p1, "SecurityResourcesReader"

    const-string v0, "KEY is null return def directly"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_19
    iget-object v0, p0, Lcom/huawei/agconnect/config/a/i;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1c
    iget-object v1, p0, Lcom/huawei/agconnect/config/a/i;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_28

    monitor-exit v0

    return-object v1

    :cond_28
    invoke-direct {p0, p1}, Lcom/huawei/agconnect/config/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_30

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1c .. :try_end_2f} :catchall_51

    return-object p2

    :cond_30
    :try_start_30
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/agconnect/config/a/i;->c:Ljavax/crypto/SecretKey;

    invoke-static {v1}, Lcom/huawei/agconnect/config/a/e;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v3, v1}, Lcom/huawei/agconnect/config/a/i;->a(Ljavax/crypto/SecretKey;[B)[B

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/agconnect/config/a/i;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catch Ljava/security/GeneralSecurityException; {:try_start_30 .. :try_end_46} :catch_48
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_30 .. :try_end_46} :catch_48
    .catchall {:try_start_30 .. :try_end_46} :catchall_51

    :try_start_46
    monitor-exit v0

    return-object v2

    :catch_48
    const-string p1, "SecurityResourcesReader"

    const-string v1, "Exception when reading the \'V\' for \'Config\'."

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-object p2

    :catchall_51
    move-exception p1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_46 .. :try_end_53} :catchall_51

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecurityResourcesReader{mKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/agconnect/config/a/i;->c:Ljavax/crypto/SecretKey;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", encrypt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/huawei/agconnect/config/a/i;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

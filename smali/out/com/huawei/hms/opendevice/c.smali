.class public abstract Lcom/huawei/hms/opendevice/c;
.super Ljava/lang/Object;
.source "SecretUtil.java"


# static fields
.field public static final a:Ljava/lang/String; = "c"

.field public static b:Lcom/huawei/secure/android/common/encrypt/utils/RootKeyUtil;

.field public static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/hms/opendevice/c;->c:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/hms/opendevice/c;->d:Ljava/lang/Object;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    const-string v0, "2A57086C86EF54970C1E6EB37BFC72B1"

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 37
    sget-object v0, Lcom/huawei/hms/opendevice/c;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p0, ""

    :cond_10
    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    sget-object v0, Lcom/huawei/hms/opendevice/c;->a:Ljava/lang/String;

    const-string v1, "save local secret key."

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 25
    :try_start_8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-static {v1}, Lcom/huawei/hms/opendevice/s;->a(Ljava/io/File;)V

    .line 27
    new-instance p2, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_38

    const-string v1, "UTF-8"

    :try_start_19
    invoke-direct {p2, v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_38

    .line 28
    :try_start_1c
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, p2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_36

    .line 29
    :try_start_21
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 31
    sget-object v0, Lcom/huawei/hms/opendevice/c;->c:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_33

    .line 32
    invoke-static {p2}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 33
    invoke-static {v1}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    return-void

    :catchall_33
    move-exception p0

    move-object v0, v1

    goto :goto_3a

    :catchall_36
    move-exception p0

    goto :goto_3a

    :catchall_38
    move-exception p0

    move-object p2, v0

    .line 34
    :goto_3a
    invoke-static {p2}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 35
    invoke-static {v0}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 36
    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 9

    .line 16
    invoke-virtual {p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    invoke-static {p5}, Lcom/huawei/hms/opendevice/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p5

    .line 17
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    const-string v0, "m"

    .line 18
    :try_start_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_18} :catch_7d

    const-string v2, "/files/math/m"

    :try_start_1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/huawei/hms/opendevice/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_24} :catch_7d

    const-string p0, "p"

    .line 19
    :try_start_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2e} :catch_7d

    const-string v1, "/files/panda/p"

    :try_start_30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/huawei/hms/opendevice/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_3a} :catch_7d

    const-string p0, "d"

    .line 20
    :try_start_3c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_44} :catch_7d

    const-string v0, "/files/panda/d"

    :try_start_46
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/huawei/hms/opendevice/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_50} :catch_7d

    const-string p0, "t"

    .line 21
    :try_start_52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5a} :catch_7d

    const-string p2, "/files/math/t"

    :try_start_5c
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/huawei/hms/opendevice/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_66} :catch_7d

    const-string p0, "s"

    .line 22
    :try_start_68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_70} :catch_7d

    const-string p2, "/files/s"

    :try_start_72
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p4, p1}, Lcom/huawei/hms/opendevice/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_7c} :catch_7d

    goto :goto_84

    .line 23
    :catch_7d
    sget-object p0, Lcom/huawei/hms/opendevice/c;->a:Ljava/lang/String;

    const-string p1, "save key IOException."

    invoke-static {p0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_84
    :goto_84
    return-void
.end method

.method public static a(Landroid/content/Context;)[B
    .registers 3

    .line 1
    sget v0, Lcom/huawei/android/hms/openid/R$string;->push_cat_head:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/opendevice/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 2
    sget v1, Lcom/huawei/android/hms/openid/R$string;->push_cat_body:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hms/opendevice/a;->a(Ljava/lang/String;)[B

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/huawei/hms/opendevice/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hms/opendevice/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 4
    invoke-static {v0, p0}, Lcom/huawei/hms/opendevice/c;->a([B[B)[B

    move-result-object p0

    invoke-static {p0, v1}, Lcom/huawei/hms/opendevice/c;->a([B[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hms/opendevice/c;->a([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([B)[B
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_15

    .line 12
    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_15

    .line 13
    :cond_7
    :goto_7
    array-length v1, p0

    if-ge v0, v1, :cond_14

    .line 14
    aget-byte v1, p0, v0

    shr-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_14
    return-object p0

    .line 15
    :cond_15
    :goto_15
    new-array p0, v0, [B

    return-object p0
.end method

.method public static a([B[B)[B
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_23

    if-eqz p1, :cond_23

    .line 5
    array-length v1, p0

    if-eqz v1, :cond_23

    array-length v1, p1

    if-nez v1, :cond_c

    goto :goto_23

    .line 6
    :cond_c
    array-length v1, p0

    .line 7
    array-length v2, p1

    if-eq v1, v2, :cond_13

    .line 8
    new-array p0, v0, [B

    return-object p0

    .line 9
    :cond_13
    new-array v2, v1, [B

    :goto_15
    if-ge v0, v1, :cond_22

    .line 10
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_22
    return-object v2

    .line 11
    :cond_23
    :goto_23
    new-array p0, v0, [B

    return-object p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/huawei/secure/android/common/encrypt/utils/RootKeyUtil;
    .registers 5

    const-class v0, Lcom/huawei/hms/opendevice/c;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/huawei/hms/opendevice/c;->b:Lcom/huawei/secure/android/common/encrypt/utils/RootKeyUtil;

    if-nez v1, :cond_2e

    .line 2
    invoke-static {}, Lcom/huawei/hms/opendevice/c;->g()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 3
    invoke-static {}, Lcom/huawei/hms/opendevice/c;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/huawei/hms/opendevice/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/huawei/hms/opendevice/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/huawei/hms/opendevice/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/huawei/secure/android/common/encrypt/utils/RootKeyUtil;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/secure/android/common/encrypt/utils/RootKeyUtil;

    move-result-object p0

    sput-object p0, Lcom/huawei/hms/opendevice/c;->b:Lcom/huawei/secure/android/common/encrypt/utils/RootKeyUtil;

    goto :goto_2e

    .line 4
    :cond_24
    sget-object v1, Lcom/huawei/hms/opendevice/c;->a:Ljava/lang/String;

    const-string v2, "root key util is null, init root key."

    invoke-static {v1, v2}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Lcom/huawei/hms/opendevice/c;->d(Landroid/content/Context;)V

    .line 6
    :cond_2e
    :goto_2e
    sget-object p0, Lcom/huawei/hms/opendevice/c;->b:Lcom/huawei/secure/android/common/encrypt/utils/RootKeyUtil;
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_32

    monitor-exit v0

    return-object p0

    :catchall_32
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    const-string v0, "d"

    .line 7
    invoke-static {v0}, Lcom/huawei/hms/opendevice/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    const-string v0, "m"

    .line 5
    invoke-static {v0}, Lcom/huawei/hms/opendevice/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {}, Lcom/huawei/hms/opendevice/c;->g()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2
    sget-object v0, Lcom/huawei/hms/opendevice/c;->a:Ljava/lang/String;

    const-string v1, "work key is empty, execute init."

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lcom/huawei/hms/opendevice/c;->d(Landroid/content/Context;)V

    .line 4
    :cond_10
    invoke-static {}, Lcom/huawei/hms/opendevice/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/huawei/hms/opendevice/c;->b(Landroid/content/Context;)Lcom/huawei/secure/android/common/encrypt/utils/RootKeyUtil;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/huawei/secure/android/common/encrypt/utils/WorkKeyCryptUtil;->decryptWorkKey(Ljava/lang/String;Lcom/huawei/secure/android/common/encrypt/utils/RootKeyUtil;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    const-string v0, "p"

    .line 23
    invoke-static {v0}, Lcom/huawei/hms/opendevice/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;)V
    .registers 13

    .line 1
    sget-object v0, Lcom/huawei/hms/opendevice/c;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hms/opendevice/c;->e(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/huawei/hms/opendevice/c;->g()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 4
    sget-object p0, Lcom/huawei/hms/opendevice/c;->a:Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_8a

    const-string v1, "The local secret is already in separate file mode."

    :try_start_14
    invoke-static {p0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_19
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hms/opendevice/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_8a

    const-string v3, "/shared_prefs/LocalAvengers.xml"

    :try_start_2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 8
    invoke-static {v1}, Lcom/huawei/secure/android/common/util/IOUtil;->deleteSecure(Ljava/io/File;)V

    .line 9
    sget-object v1, Lcom/huawei/hms/opendevice/c;->a:Ljava/lang/String;
    :try_end_42
    .catchall {:try_start_2d .. :try_end_42} :catchall_8a

    const-string v2, "destroy C, delete file LocalAvengers.xml."

    :try_start_44
    invoke-static {v1, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    const/16 v1, 0x20

    .line 10
    invoke-static {v1}, Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;->generateSecureRandom(I)[B

    move-result-object v2

    .line 11
    invoke-static {v1}, Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;->generateSecureRandom(I)[B

    move-result-object v3

    .line 12
    invoke-static {v1}, Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;->generateSecureRandom(I)[B

    move-result-object v4

    .line 13
    invoke-static {v1}, Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;->generateSecureRandom(I)[B

    move-result-object v5

    .line 14
    invoke-static {v2}, Lcom/huawei/hms/opendevice/a;->a([B)Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-static {v3}, Lcom/huawei/hms/opendevice/a;->a([B)Ljava/lang/String;

    move-result-object v7

    .line 16
    invoke-static {v4}, Lcom/huawei/hms/opendevice/a;->a([B)Ljava/lang/String;

    move-result-object v8

    .line 17
    invoke-static {v6, v7, v8, v5}, Lcom/huawei/secure/android/common/encrypt/utils/RootKeyUtil;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/huawei/secure/android/common/encrypt/utils/RootKeyUtil;

    move-result-object v2

    sput-object v2, Lcom/huawei/hms/opendevice/c;->b:Lcom/huawei/secure/android/common/encrypt/utils/RootKeyUtil;

    .line 18
    invoke-static {v1}, Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;->generateSecureRandom(I)[B

    move-result-object v1

    .line 19
    invoke-static {v1}, Lcom/huawei/hms/opendevice/a;->a([B)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/huawei/hms/opendevice/c;->b:Lcom/huawei/secure/android/common/encrypt/utils/RootKeyUtil;

    invoke-static {v1, v2}, Lcom/huawei/secure/android/common/encrypt/utils/WorkKeyCryptUtil;->encryptWorkKey(Ljava/lang/String;Lcom/huawei/secure/android/common/encrypt/utils/RootKeyUtil;)Ljava/lang/String;

    move-result-object v10

    .line 20
    invoke-static {v5}, Lcom/huawei/hms/opendevice/a;->a([B)Ljava/lang/String;

    move-result-object v9

    move-object v11, p0

    invoke-static/range {v6 .. v11}, Lcom/huawei/hms/opendevice/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 21
    sget-object p0, Lcom/huawei/hms/opendevice/c;->a:Ljava/lang/String;
    :try_end_83
    .catchall {:try_start_44 .. :try_end_83} :catchall_8a

    const-string v1, "generate D."

    :try_start_85
    invoke-static {p0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    monitor-exit v0

    return-void

    :catchall_8a
    move-exception p0

    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_85 .. :try_end_8c} :catchall_8a

    throw p0
.end method

.method public static e()Ljava/lang/String;
    .registers 1

    const-string v0, "s"

    .line 17
    invoke-static {v0}, Lcom/huawei/hms/opendevice/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;)V
    .registers 7

    .line 1
    invoke-static {}, Lcom/huawei/hms/opendevice/c;->g()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    sget-object p0, Lcom/huawei/hms/opendevice/c;->a:Ljava/lang/String;

    const-string v0, "secretKeyCache not empty."

    invoke-static {p0, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_e
    sget-object v0, Lcom/huawei/hms/opendevice/c;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    invoke-static {p0}, Lcom/huawei/hms/opendevice/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/files/math/m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/opendevice/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/files/panda/p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hms/opendevice/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/files/panda/d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hms/opendevice/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/files/math/t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hms/opendevice/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/files/s"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hms/opendevice/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x5

    .line 11
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v5, 0x3

    aput-object v3, v4, v5

    const/4 v5, 0x4

    aput-object p0, v4, v5

    invoke-static {v4}, Lcom/huawei/hms/opendevice/t;->a([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c1

    .line 12
    sget-object v4, Lcom/huawei/hms/opendevice/c;->c:Ljava/util/Map;

    const-string v5, "m"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/huawei/hms/opendevice/c;->c:Ljava/util/Map;

    const-string v4, "p"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/huawei/hms/opendevice/c;->c:Ljava/util/Map;

    const-string v1, "d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/huawei/hms/opendevice/c;->c:Ljava/util/Map;

    const-string v1, "t"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/huawei/hms/opendevice/c;->c:Ljava/util/Map;

    const-string v1, "s"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c1
    return-void
.end method

.method public static f()Ljava/lang/String;
    .registers 1

    const-string v0, "t"

    .line 1
    invoke-static {v0}, Lcom/huawei/hms/opendevice/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g()Z
    .registers 1

    .line 1
    invoke-static {}, Lcom/huawei/hms/opendevice/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.class public Lcom/huawei/hms/hatool/c0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/huawei/hms/hatool/b;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/hatool/c0;->a:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/io/File;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_57

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_57

    :cond_10
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_57

    array-length v2, v1

    if-nez v2, :cond_1a

    goto :goto_57

    :cond_1a
    array-length v2, v1

    :goto_1b
    if-ge v0, v2, :cond_52

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_4f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete file failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "hmsSdk"

    invoke-static {v4, v3}, Lcom/huawei/hms/hatool/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    :cond_46
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-static {v3}, Lcom/huawei/hms/hatool/c0;->b(Ljava/io/File;)Z

    :cond_4f
    :goto_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_52
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_57
    :goto_57
    return v0
.end method

.method public static d()Z
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huawei/hms/hatool/b;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "hms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/huawei/hms/hatool/c0;->b(Ljava/io/File;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 11

    invoke-virtual {p0}, Lcom/huawei/hms/hatool/c0;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huawei/hms/hatool/c0;->b()Z

    move-result v1

    const-string v2, "maywnj"

    const-string v3, "marfil"

    const-string v4, "febdoc"

    const-string v5, "aprpap"

    if-eqz v1, :cond_47

    const-string v1, "hmsSdk"

    const-string v6, "refresh components"

    invoke-static {v1, v6}, Lcom/huawei/hms/hatool/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x80

    invoke-static {v1}, Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;->generateSecureRandomStr(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/huawei/hms/hatool/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;->generateSecureRandomStr(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/huawei/hms/hatool/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;->generateSecureRandomStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/huawei/hms/hatool/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;->generateSecureRandomStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/huawei/hms/hatool/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hms/hatool/b;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-string v3, "Privacy_MY"

    const-string v9, "assemblyFlash"

    invoke-static {v2, v3, v9, v7, v8}, Lcom/huawei/hms/hatool/g0;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_57

    :cond_47
    invoke-virtual {p0, v5}, Lcom/huawei/hms/hatool/c0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4}, Lcom/huawei/hms/hatool/c0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3}, Lcom/huawei/hms/hatool/c0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/huawei/hms/hatool/c0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_57
    invoke-virtual {p0, v6, v5, v4, v0}, Lcom/huawei/hms/hatool/c0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[C

    move-result-object v0

    invoke-static {v1}, Lcom/huawei/secure/android/common/encrypt/utils/HexUtil;->hexStr2ByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v2, 0x2710

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/secure/android/common/encrypt/hash/PBKDF2;->pbkdf2([C[BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/secure/android/common/encrypt/utils/HexUtil;->byteArray2HexStr([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/huawei/hms/hatool/c0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/hms/component/"

    const-string v2, "component"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/hatool/c0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/hatool/c0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hianalytics_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const-string v2, "hmsSdk"

    if-nez p1, :cond_36

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_36

    const-string p1, "file directory is mkdirs"

    invoke-static {v2, p1}, Lcom/huawei/hms/hatool/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    invoke-virtual {p0, v1}, Lcom/huawei/hms/hatool/c0;->a(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_40

    invoke-static {v1, p2}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_45

    :cond_40
    const-string p1, "refreshComponent():file is not found,and file is create failed"

    invoke-static {v2, p1}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_45
    return-void
.end method

.method public final a(Ljava/io/File;)Z
    .registers 3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    :try_start_8
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result p1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_c} :catch_d

    return p1

    :catch_d
    const-string p1, "hmsSdk"

    const-string v0, "create new file error!"

    invoke-static {p1, v0}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[C
    .registers 10

    invoke-static {p1}, Lcom/huawei/secure/android/common/encrypt/utils/HexUtil;->hexStr2ByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p2}, Lcom/huawei/secure/android/common/encrypt/utils/HexUtil;->hexStr2ByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p3}, Lcom/huawei/secure/android/common/encrypt/utils/HexUtil;->hexStr2ByteArray(Ljava/lang/String;)[B

    move-result-object p3

    invoke-static {p4}, Lcom/huawei/secure/android/common/encrypt/utils/HexUtil;->hexStr2ByteArray(Ljava/lang/String;)[B

    move-result-object p4

    array-length v0, p1

    array-length v1, p2

    if-le v0, v1, :cond_15

    array-length v0, p2

    :cond_15
    array-length v1, p3

    if-le v0, v1, :cond_19

    array-length v0, p3

    :cond_19
    array-length v1, p4

    if-le v0, v1, :cond_1d

    array-length v0, p4

    :cond_1d
    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_20
    if-ge v2, v0, :cond_33

    aget-byte v3, p1, v2

    aget-byte v4, p2, v2

    xor-int/2addr v3, v4

    aget-byte v4, p3, v2

    xor-int/2addr v3, v4

    aget-byte v4, p4, v2

    xor-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_33
    return-object v1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/hatool/c0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hianalytics_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/huawei/hms/hatool/c0;->a(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_25

    invoke-static {v0}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_25
    const/16 p1, 0x80

    invoke-static {p1}, Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;->generateSecureRandomStr(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b()Z
    .registers 8

    invoke-static {}, Lcom/huawei/hms/hatool/b;->f()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v1, -0x1

    const-string v3, "Privacy_MY"

    const-string v4, "assemblyFlash"

    invoke-static {v0, v3, v4, v1, v2}, Lcom/huawei/hms/hatool/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v1, v3

    const/4 v1, 0x1

    if-nez v0, :cond_1b

    const-string v0, "hmsSdk"

    const-string v2, "First init components"

    invoke-static {v0, v2}, Lcom/huawei/hms/hatool/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide v2, 0x757b12c00L

    cmp-long v0, v5, v2

    if-lez v0, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    return v1
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    const-string v0, "f6040d0e807aaec325ecf44823765544e92905158169f694b282bf17388632cf95a83bae7d2d235c1f039b0df1dcca5fda619b6f7f459f2ff8d70ddb7b601592fe29fcae58c028f319b3b12495e67aa5390942a997a8cb572c8030b2df5c2b622608bea02b0c3e5d4dff3f72c9e3204049a45c0760cd3604af8d57f0e0c693cc"

    return-object v0
.end method

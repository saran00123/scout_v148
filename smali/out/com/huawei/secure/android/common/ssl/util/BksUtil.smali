.class public Lcom/huawei/secure/android/common/ssl/util/BksUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "BksUtil"

.field private static final b:Ljava/lang/String; = "com.huawei.hwid"

.field private static final c:Ljava/lang/String; = "com.huawei.hwid"

.field private static final d:Ljava/lang/String; = "com.huawei.hms"

.field private static final e:Ljava/lang/String; = "com.huawei.hwid.tv"

.field private static final f:Landroid/net/Uri;

.field private static final g:Ljava/lang/String; = "files/hmsrootcas.bks"

.field private static final h:Ljava/lang/String; = "4.0.2.300"

.field private static final i:Ljava/lang/String; = "aegis"

.field private static final j:Ljava/lang/String; = "hmsrootcas.bks"

.field private static final k:J = 0x240c8400L

.field private static final l:Ljava/lang/String; = "last_update_time"

.field private static final m:Ljava/lang/String; = "B92825C2BD5D6D6D1E7F39EECD17843B7D9016F611136B75441BC6F4D3F00F05"

.field private static final n:Ljava/lang/String; = "3517262215D8D3008CBF888750B6418EDC4D562AC33ED6874E0D73ABA667BC3C"

.field private static final o:Ljava/lang/String; = "E49D5C2C0E11B3B1B96CA56C6DE2A14EC7DAB5CCC3B5F300D03E5B4DBA44F539"

.field private static final p:[Ljava/lang/String;

.field private static final q:Ljava/lang/String; = ""

.field private static final r:Ljava/lang/String; = "bks_hash"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "content://com.huawei.hwid"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/huawei/secure/android/common/ssl/util/BksUtil;->f:Landroid/net/Uri;

    const-string v0, "B92825C2BD5D6D6D1E7F39EECD17843B7D9016F611136B75441BC6F4D3F00F05"

    const-string v1, "E49D5C2C0E11B3B1B96CA56C6DE2A14EC7DAB5CCC3B5F300D03E5B4DBA44F539"

    .line 14
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/secure/android/common/ssl/util/BksUtil;->p:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .registers 4

    .line 27
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    return v1

    .line 31
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const-string v2, "BksUtil"

    if-eqz p0, :cond_1c

    const-string p0, "The directory  has already exists"

    .line 33
    invoke-static {v2, p0}, Lcom/huawei/secure/android/common/ssl/util/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 37
    :cond_1c
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_29

    const-string p0, "create directory  success"

    .line 38
    invoke-static {v2, p0}, Lcom/huawei/secure/android/common/ssl/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_29
    const-string p0, "create directory  failed"

    .line 42
    invoke-static {v2, p0}, Lcom/huawei/secure/android/common/ssl/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "aegis"

    const/16 v2, 0x18

    if-lt v0, v2, :cond_25

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_41

    .line 46
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_41
    return-object p0
.end method

.method private static a([B)Ljava/lang/String;
    .registers 7

    if-eqz p0, :cond_2e

    .line 72
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_2e

    .line 76
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    array-length v1, p0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_29

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 78
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_23

    const/16 v4, 0x30

    .line 80
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    :cond_23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 84
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2e
    :goto_2e
    const-string p0, ""

    return-object p0
.end method

.method private static a(Ljava/io/InputStream;Landroid/content/Context;)V
    .registers 7

    const-string v0, "BksUtil"

    if-eqz p0, :cond_5e

    if-nez p1, :cond_7

    goto :goto_5e

    .line 1
    :cond_7
    invoke-static {p1}, Lcom/huawei/secure/android/common/ssl/util/BksUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_19

    .line 4
    invoke-static {p1}, Lcom/huawei/secure/android/common/ssl/util/BksUtil;->a(Ljava/lang/String;)I

    .line 6
    :cond_19
    new-instance v1, Ljava/io/File;

    const-string v2, "hmsrootcas.bks"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_29
    const/4 p1, 0x0

    :try_start_2a
    const-string v2, "write output stream "

    .line 12
    invoke-static {v0, v2}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_34} :catch_4f
    .catchall {:try_start_2a .. :try_end_34} :catchall_58

    const/16 p1, 0x800

    .line 14
    :try_start_36
    new-array p1, p1, [B

    .line 16
    :goto_38
    array-length v1, p1

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_45

    .line 17
    invoke-virtual {v2, p1, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_44} :catch_4b
    .catchall {:try_start_36 .. :try_end_44} :catchall_49

    goto :goto_38

    .line 22
    :cond_45
    invoke-static {v2}, Lcom/huawei/secure/android/common/ssl/util/f;->a(Ljava/io/OutputStream;)V

    goto :goto_57

    :catchall_49
    move-exception p0

    goto :goto_5a

    :catch_4b
    move-object p1, v2

    goto :goto_4f

    :goto_4d
    move-object v2, p1

    goto :goto_5a

    :catch_4f
    :goto_4f
    :try_start_4f
    const-string p0, " IOException"

    .line 23
    invoke-static {v0, p0}, Lcom/huawei/secure/android/common/ssl/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_58

    .line 25
    invoke-static {p1}, Lcom/huawei/secure/android/common/ssl/util/f;->a(Ljava/io/OutputStream;)V

    :goto_57
    return-void

    :catchall_58
    move-exception p0

    goto :goto_4d

    :goto_5a
    invoke-static {v2}, Lcom/huawei/secure/android/common/ssl/util/f;->a(Ljava/io/OutputStream;)V

    .line 26
    throw p0

    :cond_5e
    :goto_5e
    return-void
.end method

.method private static a(I)Z
    .registers 2

    const v0, 0x26262fc

    if-lt p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 5

    const/4 v0, 0x0

    const-string v1, "BksUtil"

    if-eqz p0, :cond_59

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_59

    .line 53
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_56

    const/16 v2, 0x40

    .line 55
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_56

    .line 57
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object p0, p0, v0

    .line 58
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_22} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_22} :catch_23

    return-object p0

    :catch_23
    move-exception p0

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get pm exception : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :catch_3d
    move-exception p0

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageManager.NameNotFoundException : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_56
    :goto_56
    new-array p0, v0, [B

    return-object p0

    :cond_59
    :goto_59
    const-string p0, "packageName is null or context is null"

    .line 70
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-array p0, v0, [B

    return-object p0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/huawei/secure/android/common/ssl/util/BksUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "hmsrootcas.bks"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b([B)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    :try_start_5
    const-string v1, "SHA-256"

    .line 27
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 28
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 29
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/secure/android/common/ssl/util/BksUtil;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    const-string p0, "BksUtil"

    const-string v1, "inputstraem exception"

    .line 31
    invoke-static {p0, v1}, Lcom/huawei/secure/android/common/ssl/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 25
    invoke-static {p0, p1}, Lcom/huawei/secure/android/common/ssl/util/BksUtil;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    .line 26
    invoke-static {p0}, Lcom/huawei/secure/android/common/ssl/util/BksUtil;->c([B)Ljava/lang/String;

    move-result-object p0

    const-string p1, "E49D5C2C0E11B3B1B96CA56C6DE2A14EC7DAB5CCC3B5F300D03E5B4DBA44F539"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 11

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 5
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hms version code is : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BksUtil"

    invoke-static {v2, v0}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\\."

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string v3, "4.0.2.300"

    .line 7
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 9
    array-length v3, p0

    .line 10
    array-length v4, v0

    .line 11
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v1

    :goto_31
    const/4 v7, 0x1

    if-ge v6, v5, :cond_6f

    if-ge v6, v3, :cond_3f

    .line 15
    :try_start_36
    aget-object v8, p0, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_40

    :catch_3d
    move-exception p0

    goto :goto_49

    :cond_3f
    move v8, v1

    :goto_40
    if-ge v6, v4, :cond_65

    .line 16
    aget-object v9, v0, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_48} :catch_3d

    goto :goto_66

    .line 24
    :goto_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " exception : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/huawei/secure/android/common/ssl/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-lt v6, v4, :cond_64

    move v1, v7

    :cond_64
    return v1

    :cond_65
    move v9, v1

    :goto_66
    if-ge v8, v9, :cond_69

    return v1

    :cond_69
    if-le v8, v9, :cond_6c

    return v7

    :cond_6c
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    :cond_6f
    return v7
.end method

.method private static c([B)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-eqz p0, :cond_32

    .line 7
    array-length v1, p0

    if-nez v1, :cond_8

    goto :goto_32

    :cond_8
    :try_start_8
    const-string v1, "SHA-256"

    .line 12
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 13
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/huawei/secure/android/common/ssl/util/BksUtil;->a([B)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_16} :catch_17

    goto :goto_32

    :catch_17
    move-exception p0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoSuchAlgorithmException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BksUtil"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    :goto_32
    return-object v0
.end method

.method private static c(Landroid/content/Context;)Z
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/huawei/secure/android/common/ssl/util/BksUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "hmsrootcas.bks"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    .line 4
    invoke-static {p0, p1}, Lcom/huawei/secure/android/common/ssl/util/BksUtil;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    .line 5
    sget-object p1, Lcom/huawei/secure/android/common/ssl/util/BksUtil;->p:[Ljava/lang/String;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_1c

    aget-object v3, p1, v2

    .line 6
    invoke-static {p0}, Lcom/huawei/secure/android/common/ssl/util/BksUtil;->c([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1c
    return v1
.end method

.method public static declared-synchronized getBksFromTss(Landroid/content/Context;)Ljava/io/InputStream;
    .registers 8

    const-class v0, Lcom/huawei/secure/android/common/ssl/util/BksUtil;

    monitor-enter v0

    :try_start_3
    const-string v1, "BksUtil"

    const-string v2, "get bks from tss begin"

    .line 1
    invoke-static {v1, v2}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_f

    .line 3
    invoke-static {p0}, Lcom/huawei/secure/android/common/ssl/util/c;->a(Landroid/content/Context;)V

    .line 5
    :cond_f
    invoke-static {}, Lcom/huawei/secure/android/common/ssl/util/c;->a()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_1f

    const-string p0, "BksUtil"

    const-string v2, "context is null"

    .line 7
    invoke-static {p0, v2}, Lcom/huawei/secure/android/common/ssl/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_108

    monitor-exit v0

    return-object v1

    :cond_1f
    :try_start_1f
    const-string v2, "com.huawei.hwid"

    .line 12
    invoke-static {v2}, Lcom/huawei/secure/android/common/ssl/util/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/secure/android/common/ssl/util/BksUtil;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string v2, "com.huawei.hms"

    invoke-static {v2}, Lcom/huawei/secure/android/common/ssl/util/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/secure/android/common/ssl/util/BksUtil;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hms version code is too low : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.huawei.hwid"

    invoke-static {v2}, Lcom/huawei/secure/android/common/ssl/util/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "BksUtil"

    invoke-static {v2, p0}, Lcom/huawei/secure/android/common/ssl/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_1f .. :try_end_53} :catchall_108

    monitor-exit v0

    return-object v1

    :cond_55
    :try_start_55
    const-string v2, "com.huawei.hwid"

    .line 17
    invoke-static {p0, v2}, Lcom/huawei/secure/android/common/ssl/util/BksUtil;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6e

    const-string v2, "com.huawei.hms"

    invoke-static {p0, v2}, Lcom/huawei/secure/android/common/ssl/util/BksUtil;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6e

    const-string p0, "BksUtil"

    const-string v2, "hms sign error"

    .line 18
    invoke-static {p0, v2}, Lcom/huawei/secure/android/common/ssl/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_55 .. :try_end_6c} :catchall_108

    monitor-exit v0

    return-object v1

    .line 22
    :cond_6e
    :try_start_6e
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_73
    .catchall {:try_start_6e .. :try_end_73} :catchall_108

    .line 25
    :try_start_73
    sget-object v3, Lcom/huawei/secure/android/common/ssl/util/BksUtil;->f:Landroid/net/Uri;

    const-string v4, "files/hmsrootcas.bks"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_83} :catch_e5
    .catchall {:try_start_73 .. :try_end_83} :catchall_e1

    const/16 v4, 0x400

    .line 28
    :try_start_85
    new-array v4, v4, [B

    .line 30
    :goto_87
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-le v5, v6, :cond_93

    const/4 v6, 0x0

    .line 31
    invoke-virtual {v2, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_87

    .line 33
    :cond_93
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 35
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_9f} :catch_e6
    .catchall {:try_start_85 .. :try_end_9f} :catchall_fc

    :try_start_9f
    const-string v1, "bks_hash"

    const-string v5, ""

    .line 38
    invoke-static {v1, v5, p0}, Lcom/huawei/secure/android/common/ssl/util/i;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lcom/huawei/secure/android/common/ssl/util/BksUtil;->b([B)Ljava/lang/String;

    move-result-object v5

    .line 40
    invoke-static {p0}, Lcom/huawei/secure/android/common/ssl/util/BksUtil;->c(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_c4

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bc

    goto :goto_c4

    :cond_bc
    const-string v1, "BksUtil"

    const-string v5, "bks not update"

    .line 45
    invoke-static {v1, v5}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d3

    :cond_c4
    :goto_c4
    const-string v1, "BksUtil"

    const-string v6, "update bks and sp"

    .line 46
    invoke-static {v1, v6}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {v4, p0}, Lcom/huawei/secure/android/common/ssl/util/BksUtil;->a(Ljava/io/InputStream;Landroid/content/Context;)V

    const-string v1, "bks_hash"

    .line 48
    invoke-static {v1, v5, p0}, Lcom/huawei/secure/android/common/ssl/util/i;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_d3} :catch_df
    .catchall {:try_start_9f .. :try_end_d3} :catchall_dd

    .line 58
    :goto_d3
    :try_start_d3
    invoke-static {v3}, Lcom/huawei/secure/android/common/ssl/util/f;->a(Ljava/io/InputStream;)V

    .line 59
    invoke-static {v2}, Lcom/huawei/secure/android/common/ssl/util/f;->a(Ljava/io/OutputStream;)V

    .line 60
    invoke-static {v4}, Lcom/huawei/secure/android/common/ssl/util/f;->a(Ljava/io/InputStream;)V
    :try_end_dc
    .catchall {:try_start_d3 .. :try_end_dc} :catchall_108

    goto :goto_f6

    :catchall_dd
    move-exception p0

    goto :goto_fe

    :catch_df
    move-object v1, v4

    goto :goto_e6

    :catchall_e1
    move-exception p0

    move-object v3, v1

    :goto_e3
    move-object v4, v1

    goto :goto_fe

    :catch_e5
    move-object v3, v1

    :catch_e6
    :goto_e6
    :try_start_e6
    const-string v4, "BksUtil"

    const-string v5, "Get bks from HMS_VERSION_CODE exception : No content provider"

    .line 61
    invoke-static {v4, v5}, Lcom/huawei/secure/android/common/ssl/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ed
    .catchall {:try_start_e6 .. :try_end_ed} :catchall_fc

    .line 66
    :try_start_ed
    invoke-static {v3}, Lcom/huawei/secure/android/common/ssl/util/f;->a(Ljava/io/InputStream;)V

    .line 67
    invoke-static {v2}, Lcom/huawei/secure/android/common/ssl/util/f;->a(Ljava/io/OutputStream;)V

    .line 68
    invoke-static {v1}, Lcom/huawei/secure/android/common/ssl/util/f;->a(Ljava/io/InputStream;)V

    .line 70
    :goto_f6
    invoke-static {p0}, Lcom/huawei/secure/android/common/ssl/util/BksUtil;->getFilesBksIS(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_fa
    .catchall {:try_start_ed .. :try_end_fa} :catchall_108

    monitor-exit v0

    return-object p0

    :catchall_fc
    move-exception p0

    goto :goto_e3

    .line 71
    :goto_fe
    :try_start_fe
    invoke-static {v3}, Lcom/huawei/secure/android/common/ssl/util/f;->a(Ljava/io/InputStream;)V

    .line 72
    invoke-static {v2}, Lcom/huawei/secure/android/common/ssl/util/f;->a(Ljava/io/OutputStream;)V

    .line 73
    invoke-static {v4}, Lcom/huawei/secure/android/common/ssl/util/f;->a(Ljava/io/InputStream;)V

    .line 74
    throw p0
    :try_end_108
    .catchall {:try_start_fe .. :try_end_108} :catchall_108

    :catchall_108
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getFilesBksIS(Landroid/content/Context;)Ljava/io/InputStream;
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/huawei/secure/android/common/ssl/util/BksUtil;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "BksUtil"

    const-string v1, "getFilesBksIS "

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :try_start_d
    new-instance v1, Ljava/io/FileInputStream;

    invoke-static {p0}, Lcom/huawei/secure/android/common/ssl/util/BksUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_16} :catch_17

    return-object v1

    :catch_17
    const-string p0, "FileNotFoundExceptio: "

    .line 6
    invoke-static {v0, p0}, Lcom/huawei/secure/android/common/ssl/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

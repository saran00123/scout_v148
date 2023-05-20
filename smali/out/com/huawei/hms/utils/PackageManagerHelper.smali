.class public Lcom/huawei/hms/utils/PackageManagerHelper;
.super Ljava/lang/Object;
.source "PackageManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/utils/PackageManagerHelper;->a:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)[B
    .registers 7

    const-string v0, "PackageManagerHelper"

    const-string v1, "Failed to get application signature certificate fingerprint."

    const/4 v2, 0x0

    .line 1
    :try_start_5
    iget-object v3, p0, Lcom/huawei/hms/utils/PackageManagerHelper;->a:Landroid/content/pm/PackageManager;

    const/16 v4, 0x40

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 3
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_38

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-lez v3, :cond_38

    .line 4
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_20} :catch_21

    return-object p1

    :catch_21
    move-exception p1

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_38
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-array p1, v2, [B

    return-object p1
.end method

.method public getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/utils/PackageManagerHelper;->a:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/huawei/hms/utils/PackageManagerHelper;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_11} :catch_12

    return-object p1

    .line 5
    :catch_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get application name for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PackageManagerHelper"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPackageFirstInstallTime(Ljava/lang/String;)J
    .registers 6

    const-wide/16 v0, 0x0

    .line 1
    :try_start_2
    iget-object v2, p0, Lcom/huawei/hms/utils/PackageManagerHelper;->a:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 3
    iget-wide v0, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_d} :catch_d

    :catch_d
    :cond_d
    return-wide v0
.end method

.method public getPackageSignature(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/hms/utils/PackageManagerHelper;->a(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_14

    .line 2
    array-length v0, p1

    if-nez v0, :cond_a

    goto :goto_14

    .line 5
    :cond_a
    invoke-static {p1}, Lcom/huawei/hms/utils/SHA256;->digest([B)[B

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/huawei/hms/utils/HEX;->encodeHexString([BZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_14
    :goto_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPackageStates(Ljava/lang/String;)Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    sget-object p1, Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;->NOT_INSTALLED:Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;

    return-object p1

    .line 5
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/huawei/hms/utils/PackageManagerHelper;->a:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 6
    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p1, :cond_17

    .line 7
    sget-object p1, Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;->ENABLED:Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;

    return-object p1

    .line 9
    :cond_17
    sget-object p1, Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;->DISABLED:Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_19} :catch_1a

    return-object p1

    .line 12
    :catch_1a
    sget-object p1, Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;->NOT_INSTALLED:Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;

    return-object p1
.end method

.method public getPackageVersionCode(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lcom/huawei/hms/utils/PackageManagerHelper;->a:Landroid/content/pm/PackageManager;

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 4
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_e

    return p1

    :catch_e
    :cond_e
    return v0
.end method

.method public getPackageVersionName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    .line 1
    :try_start_2
    iget-object v1, p0, Lcom/huawei/hms/utils/PackageManagerHelper;->a:Landroid/content/pm/PackageManager;

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 3
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 4
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_12} :catch_13

    return-object p1

    :catch_13
    :cond_13
    return-object v0
.end method

.method public hasProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lcom/huawei/hms/utils/PackageManagerHelper;->a:Landroid/content/pm/PackageManager;

    const/16 v2, 0x8

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 3
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v1, :cond_24

    .line 4
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v1, p1

    move v2, v0

    :goto_13
    if-ge v2, v1, :cond_24

    aget-object v3, p1, v2

    .line 5
    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1d} :catch_24

    if-eqz v3, :cond_21

    const/4 p1, 0x1

    return p1

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :catch_24
    :cond_24
    return v0
.end method

.method public verifyPackageArchive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/utils/PackageManagerHelper;->a:Landroid/content/pm/PackageManager;

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6c

    .line 3
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    if-lez v1, :cond_6c

    .line 5
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_19

    return v0

    :cond_19
    const/4 p2, 0x0

    .line 13
    :try_start_1a
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/huawei/hms/utils/IOUtils;->toInputStream([B)Ljava/io/InputStream;

    move-result-object p2

    const-string p1, "X.509"

    .line 16
    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    .line 17
    invoke-virtual {p1, p2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/utils/SHA256;->digest([B)[B

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/huawei/hms/utils/HEX;->encodeHexString([BZ)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_41} :catch_49
    .catch Ljava/security/cert/CertificateException; {:try_start_1a .. :try_end_41} :catch_47
    .catchall {:try_start_1a .. :try_end_41} :catchall_45

    .line 26
    invoke-static {p2}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return p1

    :catchall_45
    move-exception p1

    goto :goto_68

    :catch_47
    move-exception p1

    goto :goto_4a

    :catch_49
    move-exception p1

    :goto_4a
    const-string p3, "PackageManagerHelper"

    .line 27
    :try_start_4c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get application signature certificate fingerprint."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_4c .. :try_end_64} :catchall_45

    .line 29
    invoke-static {p2}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_6c

    :goto_68
    invoke-static {p2}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 30
    throw p1

    :cond_6c
    :goto_6c
    return v0
.end method

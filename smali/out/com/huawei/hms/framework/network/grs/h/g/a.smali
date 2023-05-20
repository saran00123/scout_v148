.class public Lcom/huawei/hms/framework/network/grs/h/g/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a()Ljavax/net/ssl/HostnameVerifier;
    .registers 1

    new-instance v0, Lcom/huawei/secure/android/common/ssl/hostname/StrictHostnameVerifier;

    invoke-direct {v0}, Lcom/huawei/secure/android/common/ssl/hostname/StrictHostnameVerifier;-><init>()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getInstance()Lcom/huawei/hms/framework/network/grs/GrsApp;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getBrand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "grs_sp.bks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    new-instance v0, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance p0, Lcom/huawei/secure/android/common/ssl/SecureSSLSocketFactory;

    invoke-direct {p0, v0}, Lcom/huawei/secure/android/common/ssl/SecureSSLSocketFactory;-><init>(Ljavax/net/ssl/X509TrustManager;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2f} :catch_34
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_2f} :catch_32
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_2f} :catch_30

    return-object p0

    :catch_30
    move-exception p0

    goto :goto_35

    :catch_32
    move-exception p0

    goto :goto_35

    :catch_34
    move-exception p0

    :goto_35
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

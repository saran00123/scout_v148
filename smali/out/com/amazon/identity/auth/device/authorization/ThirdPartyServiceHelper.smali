.class public Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;
.super Ljava/lang/Object;
.source "ThirdPartyServiceHelper.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "PackageManagerGetSignatures"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;,
        Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;,
        Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$TOKEN_KEYS;
    }
.end annotation


# static fields
.field private static final AUTHORIZATION_SERVICE_INTENT_ACTION_NAME:Ljava/lang/String; = "com.amazon.identity.auth.device.authorization.MapAuthorizationService"

.field private static final BINDING_ERROR_MESSAGE:Ljava/lang/String; = "Binding to authorization service has timed out!"

.field private static final CONNECTION_TIMEOUT:J = 0xaL

.field static DEVO_FINGERPRINT:Ljava/lang/String; = "7cac391937981b6134bdce1fd9834c253181f5abf91ded6078210d0f91ace360"

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.authorization.ThirdPartyServiceHelper"

.field private static PROD_FINGERPRINT:Ljava/lang/String; = "2f19adeb284eb36f7f07786152b9a1d14b21653203ad0b04ebbf9c73ab6d7625"

.field private static lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 37
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static clearCachedService(Landroid/content/Context;)V
    .registers 4

    .line 386
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_3
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Clearing Highest Versioned Service"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->getMAPServiceInfo()Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 392
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->getConnection()Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->getServiceIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v2, v1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->safeUnbind(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/content/Intent;)V

    const/4 p0, 0x0

    .line 393
    invoke-static {p0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->setMAPServiceInfo(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;)V

    .line 395
    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method private isDelgationCallToCredentialManager(Landroid/content/pm/PackageInfo;)Z
    .registers 5

    .line 250
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.amazon.identity.auth.device.authorization"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 251
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Is current package CredentialManager:"

    invoke-static {v0, v2, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private static isFingerprintValid(Landroid/content/Context;[Landroid/content/pm/Signature;)Z
    .registers 4

    .line 256
    invoke-static {}, Lcom/amazon/identity/auth/device/env/LWAEnvironment;->isProd()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_19

    .line 258
    sget-object p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Attempting to check fingerprint in development environment"

    invoke-static {p0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    sget-object p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->DEVO_FINGERPRINT:Ljava/lang/String;

    aget-object p1, p1, v0

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->isSameSignatureFingerprint(Ljava/lang/String;Landroid/content/pm/Signature;)Z

    move-result p0

    return p0

    .line 261
    :cond_19
    sget-object p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Attempting to check fingerprint in production environment"

    invoke-static {p0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    sget-object p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->PROD_FINGERPRINT:Ljava/lang/String;

    aget-object p1, p1, v0

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->isSameSignatureFingerprint(Ljava/lang/String;Landroid/content/pm/Signature;)Z

    move-result p0

    return p0
.end method

.method private isPlatformFireOS(Landroid/content/Context;)Z
    .registers 5

    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.amazon.software.fireos"

    .line 244
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    .line 245
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Is current platform FireOS:"

    invoke-static {v0, v2, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method static isSameSignatureFingerprint(Ljava/lang/String;Landroid/content/pm/Signature;)Z
    .registers 7

    const-string v0, "Fingerprint="

    const/4 v1, 0x0

    .line 268
    :try_start_3
    sget-object v2, Lcom/amazon/identity/auth/device/utils/HashAlgorithm;->SHA_256:Lcom/amazon/identity/auth/device/utils/HashAlgorithm;

    invoke-static {p1, v2}, Lcom/amazon/identity/auth/device/utils/PackageSignatureUtil;->getSignatureFingerprint(Landroid/content/pm/Signature;Lcom/amazon/identity/auth/device/utils/HashAlgorithm;)Ljava/lang/String;

    move-result-object p1

    .line 269
    sget-object v2, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Expected fingerprint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    sget-object v2, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Extracted fingerprint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_39
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_39} :catch_54
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_39} :catch_47
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_39} :catch_3a

    return p0

    :catch_3a
    move-exception p0

    .line 279
    sget-object p1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IOException getting Fingerprint. "

    invoke-static {p1, v0, p0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_47
    move-exception p0

    .line 276
    sget-object p1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NoSuchAlgorithmException getting Fingerprint. "

    invoke-static {p1, v0, p0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_54
    move-exception p0

    .line 273
    sget-object p1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CertificateException getting Fingerprint. "

    invoke-static {p1, v0, p0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static safeUnbind(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/content/Intent;)V
    .registers 6

    if-eqz p2, :cond_b

    .line 403
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    goto :goto_c

    :cond_b
    const/4 p2, 0x0

    .line 405
    :goto_c
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unbinding pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_39

    .line 409
    :try_start_24
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_39

    .line 416
    :catch_28
    sget-object p0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "IllegalArgumentException is received during unbinding from %s. Ignored."

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    :goto_39
    return-void
.end method

.method public static unbind(Landroid/content/Context;)V
    .registers 5

    .line 364
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 366
    :try_start_3
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Unbinding Highest Versioned Service"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->getMAPServiceInfo()Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 368
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->getConnection()Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 370
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->getConnection()Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->getServiceIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->safeUnbind(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/content/Intent;)V

    const/4 p0, 0x0

    .line 371
    invoke-virtual {v1, p0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->setService(Landroid/os/IInterface;)V

    .line 372
    invoke-static {v1, p0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->access$200(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;)V

    .line 373
    invoke-virtual {v1, p0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->setServiceIntent(Landroid/content/Intent;)V

    .line 375
    :cond_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method


# virtual methods
.method bindHighestVersionedService(Landroid/content/Context;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    const-string v0, "Binding to authorization service has timed out!"

    .line 286
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->isServiceCacheStale()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 p1, 0x0

    return p1

    .line 289
    :cond_a
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->getMAPServiceInfo()Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

    move-result-object v3

    .line 290
    invoke-static {v3}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->access$100(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 291
    new-instance v2, Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 293
    invoke-virtual {v7, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 294
    new-instance v8, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;

    invoke-direct {v8}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;-><init>()V

    .line 295
    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 296
    new-instance v11, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$1;

    move-object v1, v11

    move-object v2, p0

    move-object v4, v8

    move-object v5, v7

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$1;-><init>(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;Landroid/content/Intent;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v8, v11}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;->setServiceListener(Lcom/amazon/identity/auth/device/authorization/AmazonServiceListener;)V

    const/4 v1, 0x5

    .line 315
    invoke-virtual {p1, v7, v8, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_93

    .line 319
    :try_start_47
    sget-object p1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Awaiting latch"

    invoke-static {p1, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0xa

    .line 320
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v2, v3, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_59

    goto :goto_ba

    .line 321
    :cond_59
    sget-object p1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Unable to establish bind within timelimit = 10"

    invoke-static {p1, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static {v1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->setMAPServiceInfo(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;)V

    .line 323
    new-instance p1, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_THREAD:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {p1, v0, v2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw p1
    :try_end_6b
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_6b} :catch_6b

    :catch_6b
    move-exception p1

    .line 327
    sget-object v2, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg+="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InterruptedException"

    invoke-static {v2, v4, v3}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-static {v1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->setMAPServiceInfo(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;)V

    .line 329
    new-instance v1, Lcom/amazon/identity/auth/device/AuthError;

    sget-object v2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_THREAD:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {v1, v0, p1, v2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw v1

    .line 334
    :cond_93
    invoke-static {v1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->setMAPServiceInfo(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;)V

    .line 335
    sget-object p1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bind Service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unsuccessful"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ba
    return v10
.end method

.method findAuthorizationService(Ljava/util/List;)Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;",
            ">;)",
            "Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;"
        }
    .end annotation

    .line 345
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of MAP services to compare = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_1f
    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

    if-eqz v0, :cond_3b

    .line 350
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->getMapVersion()Lcom/amazon/identity/auth/map/device/utils/MAPVersion;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->getMapVersion()Lcom/amazon/identity/auth/map/device/utils/MAPVersion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->compare(Lcom/amazon/identity/auth/map/device/utils/MAPVersion;)I

    move-result v2

    if-lez v2, :cond_1f

    :cond_3b
    move-object v0, v1

    goto :goto_1f

    :cond_3d
    return-object v0
.end method

.method getAllAuthorizationServices(Landroid/content/Context;Ljava/util/List;Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;)Ljava/util/List;
    .registers 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PackageManagerGetSignatures"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/content/pm/ResolveInfo;

    if-eqz p3, :cond_4a

    .line 189
    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p3}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->access$000(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    goto :goto_4a

    .line 235
    :cond_2f
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring previous service ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 192
    :cond_4a
    :goto_4a
    :try_start_4a
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Verifying signature for pkg="

    iget-object v3, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 195
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->isPlatformFireOS(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->isDelgationCallToCredentialManager(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 196
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Current platform="

    const-string v3, "FireOS with CredentialManager"

    invoke-static {v1, v2, v3}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    .line 198
    :cond_7d
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 199
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_ee

    .line 200
    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->isFingerprintValid(Landroid/content/Context;[Landroid/content/pm/Signature;)Z

    move-result v1

    if-nez v1, :cond_94

    .line 201
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Security check failure"

    const-string v3, "Signature is incorrect."

    invoke-static {v1, v2, v3}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 212
    :cond_94
    :goto_94
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_9

    const-string v3, "map.primary"

    .line 216
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string v3, "map.version"

    .line 217
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c7

    if-nez v7, :cond_c7

    goto/16 :goto_9

    :cond_c7
    if-eqz v7, :cond_cd

    .line 222
    sget-object v2, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->VERSION_ZERO:Lcom/amazon/identity/auth/map/device/utils/MAPVersion;

    move-object v4, v2

    goto :goto_d3

    :cond_cd
    new-instance v3, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;

    invoke-direct {v3, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;-><init>(Ljava/lang/String;)V

    move-object v4, v3

    .line 223
    :goto_d3
    new-instance v6, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;

    invoke-direct {v6}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;-><init>()V

    .line 224
    new-instance v10, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

    const/4 v5, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v9

    move-object v2, v10

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;-><init>(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;Lcom/amazon/identity/auth/map/device/utils/MAPVersion;Landroid/os/IInterface;Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;ZLandroid/content/pm/ResolveInfo;Landroid/content/Intent;)V

    .line 225
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 207
    :cond_ee
    sget-object v2, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Security count failure"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signature count ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is incorrect."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4a .. :try_end_10c} :catch_10e

    goto/16 :goto_9

    :catch_10e
    move-exception v1

    .line 228
    sget-object v2, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NameNotFoundException."

    invoke-static {v2, v3, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_12d
    return-object v0
.end method

.method protected getAuthorizationServiceInstance(Landroid/content/Context;Z)Landroid/os/IInterface;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 117
    invoke-static {}, Lcom/amazon/identity/auth/device/thread/ThreadUtils;->isRunningOnMainThread()Z

    move-result v0

    if-nez v0, :cond_b0

    .line 123
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getAuthorizationServiceInstance"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p2, :cond_28

    .line 129
    :try_start_13
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->getMAPServiceInfo()Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

    move-result-object p2

    if-eqz p2, :cond_49

    .line 132
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->getConnection()Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;

    move-result-object v2

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->getServiceIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->safeUnbind(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/content/Intent;)V

    .line 133
    invoke-static {v1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->setMAPServiceInfo(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;)V

    goto :goto_49

    .line 138
    :cond_28
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->getMAPServiceInfo()Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

    move-result-object p2

    if-eqz p2, :cond_48

    .line 141
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->getConnection()Lcom/amazon/identity/auth/device/authorization/ThirdPartyAuthorizationServiceConnection;

    move-result-object v2

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->getServiceIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->safeUnbind(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/content/Intent;)V

    .line 142
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->bindHighestVersionedService(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 144
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->getService()Landroid/os/IInterface;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 148
    :cond_45
    invoke-static {v1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->setMAPServiceInfo(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;)V

    :cond_48
    move-object p2, v1

    .line 152
    :cond_49
    :goto_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_13 .. :try_end_4a} :catchall_ad

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 156
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.amazon.identity.auth.device.authorization.MapAuthorizationService"

    .line 157
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    .line 158
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 159
    sget-object v2, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of services found : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0, p1, v0, p2}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->getAllAuthorizationServices(Landroid/content/Context;Ljava/util/List;Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;)Ljava/util/List;

    move-result-object p2

    .line 163
    sget-object v2, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 165
    :try_start_7e
    invoke-virtual {p0, p2}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->findAuthorizationService(Ljava/util/List;)Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->setMAPServiceInfo(Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;)V

    .line 166
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->getMAPServiceInfo()Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

    move-result-object p2

    if-nez p2, :cond_94

    .line 168
    sget-object p1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Returning no service to use"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    monitor-exit v2

    return-object v1

    .line 171
    :cond_94
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->bindHighestVersionedService(Landroid/content/Context;)Z

    .line 172
    sget-object p1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Returning service to use"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$HighestVersionedService;->getMAPServiceInfo()Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;

    move-result-object p1

    if-eqz p1, :cond_a8

    .line 176
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper$MAPServiceInfo;->getService()Landroid/os/IInterface;

    move-result-object v1

    .line 178
    :cond_a8
    monitor-exit v2

    return-object v1

    :catchall_aa
    move-exception p1

    monitor-exit v2
    :try_end_ac
    .catchall {:try_start_7e .. :try_end_ac} :catchall_aa

    throw p1

    :catchall_ad
    move-exception p1

    .line 152
    :try_start_ae
    monitor-exit v0
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    throw p1

    .line 119
    :cond_b0
    sget-object p1, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p2, "getAuthorizationServiceInstance started on main thread"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "getAuthorizationServiceInstance started on main thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRemoteAndroidService(Landroid/content/Context;Z)Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 430
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to retrieve remote Android service. Ignore cached service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {p0, p1, p2}, Lcom/amazon/identity/auth/device/authorization/ThirdPartyServiceHelper;->getAuthorizationServiceInstance(Landroid/content/Context;Z)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/authorization/AmazonAuthorizationServiceInterface;

    return-object p1
.end method

.class public Lcom/vivo/push/util/ContextDelegate;
.super Ljava/lang/Object;
.source "ContextDelegate.java"


# annotations
.annotation build Lcom/vivo/push/NoPorGuard;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextDelegate"

.field private static mContextDelegate:Lcom/vivo/push/util/ContextDelegate;


# instance fields
.field private mCreateCredentialProtectedStorageContext:Ljava/lang/reflect/Method;

.field private mCreateDeviceProtectedStorageContext:Ljava/lang/reflect/Method;

.field private mIsFbeProj:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/vivo/push/util/ContextDelegate;->mIsFbeProj:Ljava/lang/Boolean;

    return-void
.end method

.method public static getContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    .line 89
    invoke-static {}, Lcom/vivo/push/util/ContextDelegate;->getInstance()Lcom/vivo/push/util/ContextDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/push/util/ContextDelegate;->isFBEProject()Z

    move-result v0

    if-nez v0, :cond_b

    return-object p0

    .line 93
    :cond_b
    invoke-static {}, Lcom/vivo/push/util/ContextDelegate;->getInstance()Lcom/vivo/push/util/ContextDelegate;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vivo/push/util/ContextDelegate;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/vivo/push/util/ContextDelegate;
    .registers 2

    .line 33
    sget-object v0, Lcom/vivo/push/util/ContextDelegate;->mContextDelegate:Lcom/vivo/push/util/ContextDelegate;

    if-nez v0, :cond_17

    .line 34
    const-class v0, Lcom/vivo/push/util/ContextDelegate;

    monitor-enter v0

    .line 35
    :try_start_7
    sget-object v1, Lcom/vivo/push/util/ContextDelegate;->mContextDelegate:Lcom/vivo/push/util/ContextDelegate;

    if-nez v1, :cond_12

    .line 36
    new-instance v1, Lcom/vivo/push/util/ContextDelegate;

    invoke-direct {v1}, Lcom/vivo/push/util/ContextDelegate;-><init>()V

    sput-object v1, Lcom/vivo/push/util/ContextDelegate;->mContextDelegate:Lcom/vivo/push/util/ContextDelegate;

    .line 38
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 40
    :cond_17
    :goto_17
    sget-object v0, Lcom/vivo/push/util/ContextDelegate;->mContextDelegate:Lcom/vivo/push/util/ContextDelegate;

    return-object v0
.end method


# virtual methods
.method public createCredentialProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 6

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/vivo/push/util/ContextDelegate;->mCreateCredentialProtectedStorageContext:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 69
    const-class v0, Landroid/content/Context;

    const-string v2, "createCredentialProtectedStorageContext"

    new-array v3, v1, [Ljava/lang/Class;

    .line 70
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/push/util/ContextDelegate;->mCreateCredentialProtectedStorageContext:Ljava/lang/reflect/Method;

    .line 72
    :cond_11
    iget-object v0, p0, Lcom/vivo/push/util/ContextDelegate;->mCreateCredentialProtectedStorageContext:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object v0

    :catch_1c
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method

.method public createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 6

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/vivo/push/util/ContextDelegate;->mCreateDeviceProtectedStorageContext:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 51
    const-class v0, Landroid/content/Context;

    const-string v2, "createDeviceProtectedStorageContext"

    new-array v3, v1, [Ljava/lang/Class;

    .line 52
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/push/util/ContextDelegate;->mCreateDeviceProtectedStorageContext:Ljava/lang/reflect/Method;

    .line 54
    :cond_11
    iget-object v0, p0, Lcom/vivo/push/util/ContextDelegate;->mCreateDeviceProtectedStorageContext:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object v0

    :catch_1c
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method

.method public isFBEProject()Z
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/vivo/push/util/ContextDelegate;->mIsFbeProj:Ljava/lang/Boolean;

    if-nez v0, :cond_31

    const-string v0, "ro.crypto.type"

    const-string v1, "unknow"

    .line 108
    invoke-static {v0, v1}, Lcom/vivo/push/util/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/push/util/ContextDelegate;->mIsFbeProj:Ljava/lang/Boolean;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mIsFbeProj = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/push/util/ContextDelegate;->mIsFbeProj:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextDelegate"

    invoke-static {v1, v0}, Lcom/vivo/push/util/n;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_31
    iget-object v0, p0, Lcom/vivo/push/util/ContextDelegate;->mIsFbeProj:Ljava/lang/Boolean;

    if-nez v0, :cond_37

    const/4 v0, 0x0

    return v0

    :cond_37
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

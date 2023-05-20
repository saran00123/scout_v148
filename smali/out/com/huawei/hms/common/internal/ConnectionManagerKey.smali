.class public Lcom/huawei/hms/common/internal/ConnectionManagerKey;
.super Ljava/lang/Object;
.source "ConnectionManagerKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TOption::",
        "Lcom/huawei/hms/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mApi:Lcom/huawei/hms/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/hms/api/Api<",
            "TTOption;>;"
        }
    .end annotation
.end field

.field private final mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mHashKey:I

.field private final mHaveOption:Z

.field private final mOption:Lcom/huawei/hms/api/Api$ApiOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTOption;"
        }
    .end annotation
.end field

.field private final subAppId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/huawei/hms/api/Api<",
            "TTOption;>;TTOption;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mHaveOption:Z

    .line 3
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 4
    iput-object p2, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mApi:Lcom/huawei/hms/api/Api;

    .line 5
    iput-object p3, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mOption:Lcom/huawei/hms/api/Api$ApiOptions;

    const/4 p1, 0x3

    .line 6
    new-array p1, p1, [Ljava/lang/Object;

    iget-object p2, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    aput-object p2, p1, v0

    iget-object p2, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mApi:Lcom/huawei/hms/api/Api;

    const/4 p3, 0x1

    aput-object p2, p1, p3

    iget-object p2, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mOption:Lcom/huawei/hms/api/Api$ApiOptions;

    const/4 p3, 0x2

    aput-object p2, p1, p3

    invoke-static {p1}, Lcom/huawei/hms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mHashKey:I

    .line 7
    iput-object p4, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->subAppId:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/huawei/hms/api/Api;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/Api<",
            "TTOption;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mHaveOption:Z

    .line 10
    iput-object p1, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mApi:Lcom/huawei/hms/api/Api;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mOption:Lcom/huawei/hms/api/Api$ApiOptions;

    .line 12
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mHashKey:I

    .line 13
    iput-object p2, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->subAppId:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mContextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static createConnectionManagerKey(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Ljava/lang/String;)Lcom/huawei/hms/common/internal/ConnectionManagerKey;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOption::",
            "Lcom/huawei/hms/api/Api$ApiOptions;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/huawei/hms/api/Api<",
            "TTOption;>;TTOption;",
            "Ljava/lang/String;",
            ")",
            "Lcom/huawei/hms/common/internal/ConnectionManagerKey<",
            "TTOption;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/huawei/hms/common/internal/ConnectionManagerKey;-><init>(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createConnectionManagerKey(Lcom/huawei/hms/api/Api;Ljava/lang/String;)Lcom/huawei/hms/common/internal/ConnectionManagerKey;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOption::",
            "Lcom/huawei/hms/api/Api$ApiOptions;",
            ">(",
            "Lcom/huawei/hms/api/Api<",
            "TTOption;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/huawei/hms/common/internal/ConnectionManagerKey<",
            "TTOption;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;

    invoke-direct {v0, p0, p1}, Lcom/huawei/hms/common/internal/ConnectionManagerKey;-><init>(Lcom/huawei/hms/api/Api;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/huawei/hms/common/internal/ConnectionManagerKey;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 4
    :cond_a
    check-cast p1, Lcom/huawei/hms/common/internal/ConnectionManagerKey;

    .line 5
    iget-object v1, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_4d

    iget-object v1, p1, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_4d

    .line 6
    iget-boolean v1, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mHaveOption:Z

    iget-boolean v3, p1, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mHaveOption:Z

    if-ne v1, v3, :cond_4b

    iget-object v1, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mApi:Lcom/huawei/hms/api/Api;

    iget-object v3, p1, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mApi:Lcom/huawei/hms/api/Api;

    .line 7
    invoke-static {v1, v3}, Lcom/huawei/hms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mOption:Lcom/huawei/hms/api/Api$ApiOptions;

    iget-object v3, p1, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mOption:Lcom/huawei/hms/api/Api$ApiOptions;

    .line 8
    invoke-static {v1, v3}, Lcom/huawei/hms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->subAppId:Ljava/lang/String;

    iget-object v3, p1, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->subAppId:Ljava/lang/String;

    .line 9
    invoke-static {v1, v3}, Lcom/huawei/hms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 10
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object p1, p1, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    goto :goto_4c

    :cond_4b
    move v0, v2

    :goto_4c
    return v0

    .line 11
    :cond_4d
    iget-object v1, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mContextRef:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_7c

    iget-object v1, p1, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mContextRef:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_7c

    .line 12
    iget-boolean v1, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mHaveOption:Z

    iget-boolean v3, p1, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mHaveOption:Z

    if-ne v1, v3, :cond_7a

    iget-object v1, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mApi:Lcom/huawei/hms/api/Api;

    iget-object v3, p1, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mApi:Lcom/huawei/hms/api/Api;

    .line 13
    invoke-static {v1, v3}, Lcom/huawei/hms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mOption:Lcom/huawei/hms/api/Api$ApiOptions;

    iget-object v3, p1, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mOption:Lcom/huawei/hms/api/Api$ApiOptions;

    .line 14
    invoke-static {v1, v3}, Lcom/huawei/hms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->subAppId:Ljava/lang/String;

    iget-object p1, p1, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->subAppId:Ljava/lang/String;

    .line 15
    invoke-static {v1, p1}, Lcom/huawei/hms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7a

    goto :goto_7b

    :cond_7a
    move v0, v2

    :goto_7b
    return v0

    :cond_7c
    return v2
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->mHashKey:I

    return v0
.end method

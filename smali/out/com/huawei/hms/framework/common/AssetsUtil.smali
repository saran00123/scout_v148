.class public Lcom/huawei/hms/framework/common/AssetsUtil;
.super Ljava/lang/Object;
.source "AssetsUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AssetsUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static list(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "AssetsUtil"

    if-nez p0, :cond_d

    const-string p0, "context is null"

    .line 24
    invoke-static {v0, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 25
    new-array p0, p0, [Ljava/lang/String;

    return-object p0

    .line 27
    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 30
    :try_start_12
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_16} :catch_17

    goto :goto_1d

    :catch_17
    move-exception p0

    const-string p1, "AssetManager has been destroyed"

    .line 32
    invoke-static {v0, p1, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1d
    return-object v1
.end method

.method public static open(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "AssetsUtil"

    const/4 v1, 0x0

    if-nez p0, :cond_b

    const-string p0, "context is null"

    .line 39
    invoke-static {v0, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 42
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 45
    :try_start_f
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_13} :catch_14

    goto :goto_1a

    :catch_14
    move-exception p0

    const-string p1, "AssetManager has been destroyed"

    .line 47
    invoke-static {v0, p1, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1a
    return-object v1
.end method

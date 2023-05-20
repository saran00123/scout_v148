.class public Lcom/vivo/push/ups/VUpsManager;
.super Ljava/lang/Object;
.source "VUpsManager.java"


# annotations
.annotation build Lcom/vivo/push/NoPorGuard;
.end annotation


# static fields
.field private static mVUpsManager:Lcom/vivo/push/ups/VUpsManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/vivo/push/ups/VUpsManager;
    .registers 1

    .line 21
    sget-object v0, Lcom/vivo/push/ups/VUpsManager;->mVUpsManager:Lcom/vivo/push/ups/VUpsManager;

    if-nez v0, :cond_b

    .line 22
    new-instance v0, Lcom/vivo/push/ups/VUpsManager;

    invoke-direct {v0}, Lcom/vivo/push/ups/VUpsManager;-><init>()V

    sput-object v0, Lcom/vivo/push/ups/VUpsManager;->mVUpsManager:Lcom/vivo/push/ups/VUpsManager;

    .line 24
    :cond_b
    sget-object v0, Lcom/vivo/push/ups/VUpsManager;->mVUpsManager:Lcom/vivo/push/ups/VUpsManager;

    return-object v0
.end method


# virtual methods
.method public onCommandResult(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public registerToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vivo/push/ups/UPSRegisterCallback;)V
    .registers 6

    .line 29
    invoke-static {p1}, Lcom/vivo/push/PushClient;->getInstance(Landroid/content/Context;)Lcom/vivo/push/PushClient;

    move-result-object p2

    new-instance p3, Lcom/vivo/push/ups/VUpsManager$1;

    invoke-direct {p3, p0, p5, p1}, Lcom/vivo/push/ups/VUpsManager$1;-><init>(Lcom/vivo/push/ups/VUpsManager;Lcom/vivo/push/ups/UPSRegisterCallback;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lcom/vivo/push/PushClient;->turnOnPush(Lcom/vivo/push/IPushActionListener;)V

    return-void
.end method

.method public turnOffPush(Landroid/content/Context;Lcom/vivo/push/ups/UPSTurnCallback;)V
    .registers 4

    .line 55
    invoke-static {p1}, Lcom/vivo/push/PushClient;->getInstance(Landroid/content/Context;)Lcom/vivo/push/PushClient;

    move-result-object p1

    new-instance v0, Lcom/vivo/push/ups/VUpsManager$3;

    invoke-direct {v0, p0, p2}, Lcom/vivo/push/ups/VUpsManager$3;-><init>(Lcom/vivo/push/ups/VUpsManager;Lcom/vivo/push/ups/UPSTurnCallback;)V

    invoke-virtual {p1, v0}, Lcom/vivo/push/PushClient;->turnOffPush(Lcom/vivo/push/IPushActionListener;)V

    return-void
.end method

.method public turnOnPush(Landroid/content/Context;Lcom/vivo/push/ups/UPSTurnCallback;)V
    .registers 4

    .line 49
    invoke-static {p1}, Lcom/vivo/push/PushClient;->getInstance(Landroid/content/Context;)Lcom/vivo/push/PushClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/push/PushClient;->initialize()V

    .line 50
    new-instance p1, Lcom/vivo/push/ups/CodeResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/vivo/push/ups/CodeResult;-><init>(I)V

    invoke-interface {p2, p1}, Lcom/vivo/push/ups/UPSTurnCallback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method public unRegisterToken(Landroid/content/Context;Lcom/vivo/push/ups/UPSRegisterCallback;)V
    .registers 4

    .line 39
    invoke-static {p1}, Lcom/vivo/push/PushClient;->getInstance(Landroid/content/Context;)Lcom/vivo/push/PushClient;

    move-result-object p1

    new-instance v0, Lcom/vivo/push/ups/VUpsManager$2;

    invoke-direct {v0, p0, p2}, Lcom/vivo/push/ups/VUpsManager$2;-><init>(Lcom/vivo/push/ups/VUpsManager;Lcom/vivo/push/ups/UPSRegisterCallback;)V

    invoke-virtual {p1, v0}, Lcom/vivo/push/PushClient;->turnOffPush(Lcom/vivo/push/IPushActionListener;)V

    return-void
.end method

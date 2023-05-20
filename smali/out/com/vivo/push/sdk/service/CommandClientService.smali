.class public Lcom/vivo/push/sdk/service/CommandClientService;
.super Lcom/vivo/push/sdk/service/CommandService;
.source "CommandClientService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/vivo/push/sdk/service/CommandService;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "com.vivo.pushclient.action.RECEIVE"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

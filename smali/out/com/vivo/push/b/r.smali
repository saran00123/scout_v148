.class public final Lcom/vivo/push/b/r;
.super Lcom/vivo/push/b/s;
.source "OnPublishReceiveCommand.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x6

    .line 10
    invoke-direct {p0, v0}, Lcom/vivo/push/b/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final b(Lcom/vivo/push/a;)V
    .registers 2

    .line 16
    invoke-super {p0, p1}, Lcom/vivo/push/b/s;->b(Lcom/vivo/push/a;)V

    return-void
.end method

.method protected final c(Lcom/vivo/push/a;)V
    .registers 2

    .line 22
    invoke-super {p0, p1}, Lcom/vivo/push/b/s;->c(Lcom/vivo/push/a;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "OnPublishCommand"

    return-object v0
.end method

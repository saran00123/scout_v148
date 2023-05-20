.class public final Lcom/vivo/push/b/k;
.super Lcom/vivo/push/b/s;
.source "OnClearCacheReceiveCommand.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x9

    .line 10
    invoke-direct {p0, v0}, Lcom/vivo/push/b/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final b(Lcom/vivo/push/a;)V
    .registers 2

    .line 15
    invoke-super {p0, p1}, Lcom/vivo/push/b/s;->b(Lcom/vivo/push/a;)V

    return-void
.end method

.method protected final c(Lcom/vivo/push/a;)V
    .registers 2

    .line 20
    invoke-super {p0, p1}, Lcom/vivo/push/b/s;->c(Lcom/vivo/push/a;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "OnClearCacheCommand"

    return-object v0
.end method

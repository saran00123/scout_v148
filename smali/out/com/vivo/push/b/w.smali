.class public final Lcom/vivo/push/b/w;
.super Lcom/vivo/push/g;
.source "PushModeCommand.java"


# instance fields
.field public c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x7db

    .line 20
    invoke-direct {p0, v0}, Lcom/vivo/push/g;-><init>(I)V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/vivo/push/b/w;->c:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected final b(Lcom/vivo/push/a;)V
    .registers 4

    .line 33
    iget v0, p0, Lcom/vivo/push/b/w;->c:I

    const-string v1, "com.bbk.push.ikey.MODE_TYPE"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method protected final c(Lcom/vivo/push/a;)V
    .registers 4

    const-string v0, "com.bbk.push.ikey.MODE_TYPE"

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p1, v0, v1}, Lcom/vivo/push/a;->b(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/vivo/push/b/w;->c:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "PushModeCommand"

    return-object v0
.end method

.class public final Lcom/vivo/push/b/u;
.super Lcom/vivo/push/b/v;
.source "OnUndoMsgReceiveCommand.java"


# instance fields
.field public c:J

.field private h:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/16 v0, 0x14

    .line 16
    invoke-direct {p0, v0}, Lcom/vivo/push/b/v;-><init>(I)V

    const-wide/16 v0, -0x1

    .line 11
    iput-wide v0, p0, Lcom/vivo/push/b/u;->c:J

    return-void
.end method


# virtual methods
.method protected final b(Lcom/vivo/push/a;)V
    .registers 5

    .line 37
    invoke-super {p0, p1}, Lcom/vivo/push/b/v;->b(Lcom/vivo/push/a;)V

    .line 38
    iget-wide v0, p0, Lcom/vivo/push/b/u;->c:J

    const-string v2, "undo_msg_v1"

    invoke-virtual {p1, v2, v0, v1}, Lcom/vivo/push/a;->a(Ljava/lang/String;J)V

    .line 39
    iget v0, p0, Lcom/vivo/push/b/u;->h:I

    const-string v1, "undo_msg_type_v1"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method protected final c(Lcom/vivo/push/a;)V
    .registers 5

    .line 44
    invoke-super {p0, p1}, Lcom/vivo/push/b/v;->c(Lcom/vivo/push/a;)V

    .line 45
    iget-wide v0, p0, Lcom/vivo/push/b/u;->c:J

    const-string v2, "undo_msg_v1"

    invoke-virtual {p1, v2, v0, v1}, Lcom/vivo/push/a;->b(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vivo/push/b/u;->c:J

    const-string v0, "undo_msg_type_v1"

    const/4 v1, 0x0

    .line 46
    invoke-virtual {p1, v0, v1}, Lcom/vivo/push/a;->b(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/vivo/push/b/u;->h:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "OnUndoMsgCommand"

    return-object v0
.end method

.class public final Lcom/vivo/push/b/h;
.super Lcom/vivo/push/g;
.source "MsgArriveCommand.java"


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x7dd

    .line 18
    invoke-direct {p0, v0}, Lcom/vivo/push/g;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/vivo/push/b/h;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/vivo/push/b/h;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final b(Lcom/vivo/push/a;)V
    .registers 4

    .line 32
    iget-object v0, p0, Lcom/vivo/push/b/h;->c:Ljava/lang/String;

    const-string v1, "MsgArriveCommand.MSG_TAG"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final c(Lcom/vivo/push/a;)V
    .registers 3

    const-string v0, "MsgArriveCommand.MSG_TAG"

    .line 37
    invoke-virtual {p1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/push/b/h;->c:Ljava/lang/String;

    return-void
.end method

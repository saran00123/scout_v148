.class public final Lcom/vivo/push/b/m;
.super Lcom/vivo/push/b/s;
.source "OnListTagReceiveCommand.java"


# instance fields
.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x8

    .line 13
    invoke-direct {p0, v0}, Lcom/vivo/push/b/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final b(Lcom/vivo/push/a;)V
    .registers 4

    .line 29
    invoke-super {p0, p1}, Lcom/vivo/push/b/s;->b(Lcom/vivo/push/a;)V

    .line 30
    iget-object v0, p0, Lcom/vivo/push/b/m;->c:Ljava/util/ArrayList;

    const-string v1, "tags_list"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method protected final c(Lcom/vivo/push/a;)V
    .registers 3

    .line 36
    invoke-super {p0, p1}, Lcom/vivo/push/b/s;->c(Lcom/vivo/push/a;)V

    const-string v0, "tags_list"

    .line 37
    invoke-virtual {p1, v0}, Lcom/vivo/push/a;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/push/b/m;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "OnListTagCommand"

    return-object v0
.end method

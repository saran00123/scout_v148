.class public final Lcom/vivo/push/b/t;
.super Lcom/vivo/push/b/s;
.source "OnTagsReceiveCommand.java"


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

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/vivo/push/b/s;-><init>(I)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/vivo/push/b/t;->c:Ljava/util/ArrayList;

    .line 11
    iput-object p1, p0, Lcom/vivo/push/b/t;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected final b(Lcom/vivo/push/a;)V
    .registers 4

    .line 46
    invoke-super {p0, p1}, Lcom/vivo/push/b/s;->b(Lcom/vivo/push/a;)V

    .line 47
    iget-object v0, p0, Lcom/vivo/push/b/t;->c:Ljava/util/ArrayList;

    const-string v1, "content"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 48
    iget-object v0, p0, Lcom/vivo/push/b/t;->d:Ljava/util/ArrayList;

    const-string v1, "error_msg"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method protected final c(Lcom/vivo/push/a;)V
    .registers 3

    .line 54
    invoke-super {p0, p1}, Lcom/vivo/push/b/s;->c(Lcom/vivo/push/a;)V

    const-string v0, "content"

    .line 55
    invoke-virtual {p1, v0}, Lcom/vivo/push/a;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/push/b/t;->c:Ljava/util/ArrayList;

    const-string v0, "error_msg"

    .line 56
    invoke-virtual {p1, v0}, Lcom/vivo/push/a;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/push/b/t;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "OnSetTagsCommand"

    return-object v0
.end method

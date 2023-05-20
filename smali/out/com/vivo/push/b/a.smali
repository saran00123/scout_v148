.class public final Lcom/vivo/push/b/a;
.super Lcom/vivo/push/b/c;
.source "AliasCommand.java"


# instance fields
.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    const/16 p1, 0x7d2

    goto :goto_7

    :cond_5
    const/16 p1, 0x7d3

    .line 18
    :goto_7
    invoke-direct {p0, p1, p2}, Lcom/vivo/push/b/c;-><init>(ILjava/lang/String;)V

    .line 19
    iput-object p3, p0, Lcom/vivo/push/b/a;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final b(Lcom/vivo/push/a;)V
    .registers 4

    .line 35
    invoke-super {p0, p1}, Lcom/vivo/push/b/c;->b(Lcom/vivo/push/a;)V

    .line 36
    iget-object v0, p0, Lcom/vivo/push/b/a;->c:Ljava/util/ArrayList;

    const-string v1, "tags"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final c(Lcom/vivo/push/a;)V
    .registers 3

    .line 42
    invoke-super {p0, p1}, Lcom/vivo/push/b/c;->c(Lcom/vivo/push/a;)V

    const-string v0, "tags"

    .line 43
    invoke-virtual {p1, v0}, Lcom/vivo/push/a;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/push/b/a;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AliasCommand:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1035
    iget v1, p0, Lcom/vivo/push/g;->a:I

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

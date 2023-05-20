.class public final Lcom/vivo/push/b/x;
.super Lcom/vivo/push/g;
.source "ReporterCommand.java"


# instance fields
.field public c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:J


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x7dc

    .line 22
    invoke-direct {p0, v0}, Lcom/vivo/push/g;-><init>(I)V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    .line 26
    invoke-direct {p0}, Lcom/vivo/push/b/x;-><init>()V

    .line 1035
    iput-wide p1, p0, Lcom/vivo/push/b/x;->d:J

    return-void
.end method


# virtual methods
.method public final b(Lcom/vivo/push/a;)V
    .registers 5

    .line 48
    iget-object v0, p0, Lcom/vivo/push/b/x;->c:Ljava/util/HashMap;

    const-string v1, "ReporterCommand.EXTRA_PARAMS"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 49
    iget-wide v0, p0, Lcom/vivo/push/b/x;->d:J

    const-string v2, "ReporterCommand.EXTRA_REPORTER_TYPE"

    invoke-virtual {p1, v2, v0, v1}, Lcom/vivo/push/a;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public final c(Lcom/vivo/push/a;)V
    .registers 5

    .line 1170
    iget-object v0, p1, Lcom/vivo/push/a;->a:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    iget-object v0, p1, Lcom/vivo/push/a;->a:Landroid/os/Bundle;

    const-string v1, "ReporterCommand.EXTRA_PARAMS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 55
    :goto_e
    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/vivo/push/b/x;->c:Ljava/util/HashMap;

    .line 56
    iget-wide v0, p0, Lcom/vivo/push/b/x;->d:J

    const-string v2, "ReporterCommand.EXTRA_REPORTER_TYPE"

    invoke-virtual {p1, v2, v0, v1}, Lcom/vivo/push/a;->b(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vivo/push/b/x;->d:J

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReporterCommand\uff08"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/vivo/push/b/x;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

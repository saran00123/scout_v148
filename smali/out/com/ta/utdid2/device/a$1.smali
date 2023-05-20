.class Lcom/ta/utdid2/device/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ta/utdid2/device/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ta/utdid2/device/a;->q()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/ta/utdid2/device/a;

.field final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ta/utdid2/device/a;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .line 75
    iput-object p1, p0, Lcom/ta/utdid2/device/a$1;->b:Lcom/ta/utdid2/device/a;

    iput-object p2, p0, Lcom/ta/utdid2/device/a$1;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/ta/utdid2/device/a$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public i()V
    .registers 6

    .line 78
    iget-object v0, p0, Lcom/ta/utdid2/device/a$1;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/ta/a/a/a;->a(Ljava/lang/String;)Lcom/ta/a/a/b;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/ta/utdid2/device/a$1;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/ta/a/d/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 82
    invoke-static {v1}, Lcom/ta/a/a/a;->a(Ljava/lang/String;)Lcom/ta/a/a/b;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/ta/a/a/b;->isValid()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 85
    invoke-virtual {v1}, Lcom/ta/a/a/b;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/ta/a/a/b;->getTimestamp()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_37

    .line 86
    :cond_28
    iget-object v1, p0, Lcom/ta/utdid2/device/a$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/ta/utdid2/device/a$1;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ta/a/d/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_37

    .line 89
    :cond_30
    iget-object v1, p0, Lcom/ta/utdid2/device/a$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/ta/utdid2/device/a$1;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ta/a/d/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    :cond_37
    :goto_37
    invoke-static {}, Lcom/ta/a/d/e;->g()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 94
    invoke-static {v1}, Lcom/ta/a/a/a;->a(Ljava/lang/String;)Lcom/ta/a/a/b;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Lcom/ta/a/a/b;->isValid()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 97
    invoke-virtual {v1}, Lcom/ta/a/a/b;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/ta/a/a/b;->getTimestamp()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-gez v0, :cond_62

    .line 98
    :cond_57
    iget-object v0, p0, Lcom/ta/utdid2/device/a$1;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/ta/a/d/e;->b(Ljava/lang/String;)V

    goto :goto_62

    .line 101
    :cond_5d
    iget-object v0, p0, Lcom/ta/utdid2/device/a$1;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/ta/a/d/e;->b(Ljava/lang/String;)V

    :cond_62
    :goto_62
    return-void
.end method

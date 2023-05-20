.class public Lcom/vivo/push/b/c;
.super Lcom/vivo/push/g;
.source "BaseAppCommand.java"


# instance fields
.field private c:J

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 5

    .line 31
    invoke-direct {p0, p1}, Lcom/vivo/push/g;-><init>(I)V

    const-wide/16 v0, -0x1

    .line 23
    iput-wide v0, p0, Lcom/vivo/push/b/c;->c:J

    const/4 p1, -0x1

    .line 24
    iput p1, p0, Lcom/vivo/push/b/c;->g:I

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/vivo/push/b/c;->e:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/vivo/push/b/c;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected b(Lcom/vivo/push/a;)V
    .registers 5

    .line 125
    iget-object v0, p0, Lcom/vivo/push/b/c;->e:Ljava/lang/String;

    const-string v1, "req_id"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/vivo/push/b/c;->f:Ljava/lang/String;

    const-string v1, "package_name"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sdk_version"

    const-wide/16 v1, 0x131

    .line 127
    invoke-virtual {p1, v0, v1, v2}, Lcom/vivo/push/a;->a(Ljava/lang/String;J)V

    .line 128
    iget v0, p0, Lcom/vivo/push/b/c;->g:I

    const-string v1, "PUSH_APP_STATUS"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;I)V

    .line 130
    iget-object v0, p0, Lcom/vivo/push/b/c;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 131
    iget-object v0, p0, Lcom/vivo/push/b/c;->i:Ljava/lang/String;

    const-string v1, "BaseAppCommand.EXTRA__HYBRIDVERSION"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    return-void
.end method

.method protected c(Lcom/vivo/push/a;)V
    .registers 5

    const-string v0, "req_id"

    .line 138
    invoke-virtual {p1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/push/b/c;->e:Ljava/lang/String;

    const-string v0, "package_name"

    .line 139
    invoke-virtual {p1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/push/b/c;->f:Ljava/lang/String;

    const-string v0, "sdk_version"

    const-wide/16 v1, 0x0

    .line 140
    invoke-virtual {p1, v0, v1, v2}, Lcom/vivo/push/a;->b(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vivo/push/b/c;->c:J

    const-string v0, "PUSH_APP_STATUS"

    const/4 v1, 0x0

    .line 141
    invoke-virtual {p1, v0, v1}, Lcom/vivo/push/a;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vivo/push/b/c;->g:I

    const-string v0, "BaseAppCommand.EXTRA__HYBRIDVERSION"

    .line 142
    invoke-virtual {p1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/push/b/c;->i:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "BaseAppCommand"

    return-object v0
.end method

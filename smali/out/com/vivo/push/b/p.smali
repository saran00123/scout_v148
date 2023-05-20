.class public final Lcom/vivo/push/b/p;
.super Lcom/vivo/push/g;
.source "OnNotificationClickReceiveCommand.java"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:Lcom/vivo/push/model/InsideNotificationItem;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x5

    .line 31
    invoke-direct {p0, v0}, Lcom/vivo/push/g;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLcom/vivo/push/model/InsideNotificationItem;)V
    .registers 6

    const/4 v0, 0x5

    .line 22
    invoke-direct {p0, v0}, Lcom/vivo/push/g;-><init>(I)V

    .line 23
    iput-object p1, p0, Lcom/vivo/push/b/p;->c:Ljava/lang/String;

    .line 24
    iput-wide p2, p0, Lcom/vivo/push/b/p;->e:J

    .line 25
    iput-object p4, p0, Lcom/vivo/push/b/p;->f:Lcom/vivo/push/model/InsideNotificationItem;

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/vivo/push/b/p;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final b(Lcom/vivo/push/a;)V
    .registers 5

    .line 78
    iget-object v0, p0, Lcom/vivo/push/b/p;->c:Ljava/lang/String;

    const-string v1, "package_name"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-wide v0, p0, Lcom/vivo/push/b/p;->e:J

    const-string v2, "notify_id"

    invoke-virtual {p1, v2, v0, v1}, Lcom/vivo/push/a;->a(Ljava/lang/String;J)V

    .line 80
    iget-object v0, p0, Lcom/vivo/push/b/p;->f:Lcom/vivo/push/model/InsideNotificationItem;

    invoke-static {v0}, Lcom/vivo/push/util/o;->b(Lcom/vivo/push/model/InsideNotificationItem;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification_v1"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/vivo/push/b/p;->d:Ljava/lang/String;

    const-string v1, "open_pkg_name"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final c(Lcom/vivo/push/a;)V
    .registers 5

    const-string v0, "package_name"

    .line 87
    invoke-virtual {p1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/push/b/p;->c:Ljava/lang/String;

    const-string v0, "notify_id"

    const-wide/16 v1, -0x1

    .line 88
    invoke-virtual {p1, v0, v1, v2}, Lcom/vivo/push/a;->b(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vivo/push/b/p;->e:J

    const-string v0, "open_pkg_name"

    .line 89
    invoke-virtual {p1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/push/b/p;->d:Ljava/lang/String;

    const-string v0, "notification_v1"

    .line 90
    invoke-virtual {p1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 92
    invoke-static {p1}, Lcom/vivo/push/util/o;->a(Ljava/lang/String;)Lcom/vivo/push/model/InsideNotificationItem;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/push/b/p;->f:Lcom/vivo/push/model/InsideNotificationItem;

    .line 94
    :cond_2c
    iget-object p1, p0, Lcom/vivo/push/b/p;->f:Lcom/vivo/push/model/InsideNotificationItem;

    if-eqz p1, :cond_35

    .line 95
    iget-wide v0, p0, Lcom/vivo/push/b/p;->e:J

    invoke-virtual {p1, v0, v1}, Lcom/vivo/push/model/InsideNotificationItem;->setMsgId(J)V

    :cond_35
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "OnNotificationClickCommand"

    return-object v0
.end method

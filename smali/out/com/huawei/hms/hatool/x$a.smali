.class public Lcom/huawei/hms/hatool/x$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/hatool/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public final synthetic e:Lcom/huawei/hms/hatool/x;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/hatool/x;)V
    .registers 4

    iput-object p1, p0, Lcom/huawei/hms/hatool/x$a;->e:Lcom/huawei/hms/hatool/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/hms/hatool/x$a;->d:J

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 4

    iget-object v0, p0, Lcom/huawei/hms/hatool/x$a;->e:Lcom/huawei/hms/hatool/x;

    invoke-static {v0}, Lcom/huawei/hms/hatool/x;->a(Lcom/huawei/hms/hatool/x;)Lcom/huawei/hms/hatool/x$a;

    move-result-object v0

    iput-wide p1, v0, Lcom/huawei/hms/hatool/x$a;->d:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/huawei/hms/hatool/x$a;->e:Lcom/huawei/hms/hatool/x;

    invoke-static {v0}, Lcom/huawei/hms/hatool/x;->a(Lcom/huawei/hms/hatool/x;)Lcom/huawei/hms/hatool/x$a;

    move-result-object v0

    iput-object p1, v0, Lcom/huawei/hms/hatool/x$a;->c:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/huawei/hms/hatool/x$a;->e:Lcom/huawei/hms/hatool/x;

    invoke-static {v0}, Lcom/huawei/hms/hatool/x;->a(Lcom/huawei/hms/hatool/x;)Lcom/huawei/hms/hatool/x$a;

    move-result-object v0

    iput-object p1, v0, Lcom/huawei/hms/hatool/x$a;->a:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/huawei/hms/hatool/x$a;->e:Lcom/huawei/hms/hatool/x;

    invoke-static {v0}, Lcom/huawei/hms/hatool/x;->a(Lcom/huawei/hms/hatool/x;)Lcom/huawei/hms/hatool/x$a;

    move-result-object v0

    iput-object p1, v0, Lcom/huawei/hms/hatool/x$a;->b:Ljava/lang/String;

    return-void
.end method

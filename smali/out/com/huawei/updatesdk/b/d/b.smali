.class public Lcom/huawei/updatesdk/b/d/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:J

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/updatesdk/b/d/b;->c:Ljava/lang/String;

    iput-wide p2, p0, Lcom/huawei/updatesdk/b/d/b;->b:J

    iput-object p4, p0, Lcom/huawei/updatesdk/b/d/b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/huawei/updatesdk/b/d/b;->a:J

    return-wide v0
.end method

.method public a(I)V
    .registers 4

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/huawei/updatesdk/b/d/b;->a:J

    return-void
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/huawei/updatesdk/b/d/b;->b:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huawei/updatesdk/b/d/b;->e:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/updatesdk/b/d/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/updatesdk/b/d/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/updatesdk/b/d/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()J
    .registers 3

    iget-wide v0, p0, Lcom/huawei/updatesdk/b/d/b;->b:J

    return-wide v0
.end method

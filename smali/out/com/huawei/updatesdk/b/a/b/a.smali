.class public Lcom/huawei/updatesdk/b/a/b/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/updatesdk/b/a/b/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/huawei/updatesdk/b/a/b/a$a;

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/huawei/updatesdk/b/a/b/a$a;
    .registers 2

    iget-object v0, p0, Lcom/huawei/updatesdk/b/a/b/a;->a:Lcom/huawei/updatesdk/b/a/b/a$a;

    return-object v0
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/huawei/updatesdk/b/a/b/a;->c:J

    return-void
.end method

.method public a(Lcom/huawei/updatesdk/b/a/b/a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/huawei/updatesdk/b/a/b/a;->a:Lcom/huawei/updatesdk/b/a/b/a$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huawei/updatesdk/b/a/b/a;->b:Ljava/lang/String;

    return-void
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/huawei/updatesdk/b/a/b/a;->c:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/updatesdk/b/a/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

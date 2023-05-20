.class Lcom/huawei/hms/framework/network/grs/g/i$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/framework/network/grs/g/i;->a(Lcom/huawei/hms/framework/network/grs/g/l/c;Lcom/huawei/hms/framework/network/grs/b;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/e/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/framework/network/grs/g/l/c;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/huawei/hms/framework/network/grs/e/c;

.field final synthetic d:Lcom/huawei/hms/framework/network/grs/b;

.field final synthetic e:Lcom/huawei/hms/framework/network/grs/g/i;


# direct methods
.method constructor <init>(Lcom/huawei/hms/framework/network/grs/g/i;Lcom/huawei/hms/framework/network/grs/g/l/c;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/e/c;Lcom/huawei/hms/framework/network/grs/b;)V
    .registers 6

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/g/i$b;->e:Lcom/huawei/hms/framework/network/grs/g/i;

    iput-object p2, p0, Lcom/huawei/hms/framework/network/grs/g/i$b;->a:Lcom/huawei/hms/framework/network/grs/g/l/c;

    iput-object p3, p0, Lcom/huawei/hms/framework/network/grs/g/i$b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/hms/framework/network/grs/g/i$b;->c:Lcom/huawei/hms/framework/network/grs/e/c;

    iput-object p5, p0, Lcom/huawei/hms/framework/network/grs/g/i$b;->d:Lcom/huawei/hms/framework/network/grs/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/g/i$b;->e:Lcom/huawei/hms/framework/network/grs/g/i;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/g/i$b;->a:Lcom/huawei/hms/framework/network/grs/g/l/c;

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/g/i$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/hms/framework/network/grs/g/i$b;->c:Lcom/huawei/hms/framework/network/grs/e/c;

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/hms/framework/network/grs/g/i;->a(Lcom/huawei/hms/framework/network/grs/g/l/c;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/e/c;)Lcom/huawei/hms/framework/network/grs/g/e;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/g/i$b;->d:Lcom/huawei/hms/framework/network/grs/b;

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/framework/network/grs/g/i;->a(Lcom/huawei/hms/framework/network/grs/g/i;Lcom/huawei/hms/framework/network/grs/g/e;Lcom/huawei/hms/framework/network/grs/b;)V

    return-void
.end method

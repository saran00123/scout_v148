.class Lcom/huawei/updatesdk/b/i/a$a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/updatesdk/b/i/a$a;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/updatesdk/b/i/a$a;


# direct methods
.method constructor <init>(Lcom/huawei/updatesdk/b/i/a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/huawei/updatesdk/b/i/a$a$b;->a:Lcom/huawei/updatesdk/b/i/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/huawei/updatesdk/b/i/a$a$b;->a:Lcom/huawei/updatesdk/b/i/a$a;

    iget-object p1, p1, Lcom/huawei/updatesdk/b/i/a$a;->a:Lcom/huawei/updatesdk/b/i/a;

    invoke-static {p1}, Lcom/huawei/updatesdk/b/i/a;->a(Lcom/huawei/updatesdk/b/i/a;)Lcom/huawei/updatesdk/b/i/b;

    move-result-object p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/huawei/updatesdk/b/i/a$a$b;->a:Lcom/huawei/updatesdk/b/i/a$a;

    iget-object p1, p1, Lcom/huawei/updatesdk/b/i/a$a;->a:Lcom/huawei/updatesdk/b/i/a;

    invoke-static {p1}, Lcom/huawei/updatesdk/b/i/a;->a(Lcom/huawei/updatesdk/b/i/a;)Lcom/huawei/updatesdk/b/i/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/huawei/updatesdk/b/i/b;->b()V

    :cond_15
    return-void
.end method

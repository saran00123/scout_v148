.class Lcom/huawei/updatesdk/b/i/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/updatesdk/b/i/a;->a(Lcom/huawei/updatesdk/b/i/a$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/updatesdk/b/i/a;


# direct methods
.method constructor <init>(Lcom/huawei/updatesdk/b/i/a;)V
    .registers 2

    iput-object p1, p0, Lcom/huawei/updatesdk/b/i/a$b;->a:Lcom/huawei/updatesdk/b/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/huawei/updatesdk/b/i/a$b;->a:Lcom/huawei/updatesdk/b/i/a;

    invoke-static {v0}, Lcom/huawei/updatesdk/b/i/a;->c(Lcom/huawei/updatesdk/b/i/a;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/huawei/updatesdk/b/i/a$b;->a:Lcom/huawei/updatesdk/b/i/a;

    invoke-static {v0}, Lcom/huawei/updatesdk/b/i/a;->c(Lcom/huawei/updatesdk/b/i/a;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_11
    return-void
.end method

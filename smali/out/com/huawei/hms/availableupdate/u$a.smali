.class public Lcom/huawei/hms/availableupdate/u$a;
.super Ljava/lang/Object;
.source "ConfirmDialogs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/availableupdate/u;->g()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hms/availableupdate/u;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/availableupdate/u;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/availableupdate/u$a;->a:Lcom/huawei/hms/availableupdate/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/u$a;->a:Lcom/huawei/hms/availableupdate/u;

    invoke-virtual {p1}, Lcom/huawei/hms/availableupdate/q;->d()V

    return-void
.end method

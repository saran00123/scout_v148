.class public Lcom/huawei/hms/ui/AbstractDialog$b;
.super Ljava/lang/Object;
.source "AbstractDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/ui/AbstractDialog;->onCreateDialog(Landroid/app/Activity;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hms/ui/AbstractDialog;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/ui/AbstractDialog;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/ui/AbstractDialog$b;->a:Lcom/huawei/hms/ui/AbstractDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/huawei/hms/ui/AbstractDialog$b;->a:Lcom/huawei/hms/ui/AbstractDialog;

    invoke-virtual {p1}, Lcom/huawei/hms/ui/AbstractDialog;->cancel()V

    return-void
.end method

.class public abstract Lcom/huawei/hms/common/internal/DialogRedirect;
.super Ljava/lang/Object;
.source "DialogRedirect.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/app/Activity;Landroid/content/Intent;I)Lcom/huawei/hms/common/internal/DialogRedirect;
    .registers 4

    .line 1
    new-instance v0, Lcom/huawei/hms/common/internal/DialogRedirectImpl;

    invoke-direct {v0, p1, p0, p2}, Lcom/huawei/hms/common/internal/DialogRedirectImpl;-><init>(Landroid/content/Intent;Landroid/app/Activity;I)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/DialogRedirect;->redirect()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_b

    :catchall_4
    :try_start_4
    const-string p2, "DialogRedirect"

    const-string v0, "Failed to start resolution intent"

    .line 6
    invoke-static {p2, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 5
    :goto_b
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :catchall_f
    move-exception p2

    .line 8
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 9
    throw p2
.end method

.method protected abstract redirect()V
.end method

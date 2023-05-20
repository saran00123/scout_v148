.class Lcom/tutk/sample/AVAPI/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tutk/sample/AVAPI/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tutk/sample/AVAPI/MainActivity;


# direct methods
.method constructor <init>(Lcom/tutk/sample/AVAPI/MainActivity;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/tutk/sample/AVAPI/MainActivity$2;->this$0:Lcom/tutk/sample/AVAPI/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 79
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 80
    iget-object v0, p0, Lcom/tutk/sample/AVAPI/MainActivity$2;->this$0:Lcom/tutk/sample/AVAPI/MainActivity;

    const-class v1, Lcom/pilotlab/ffmpeg/TestFfmpegActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 81
    iget-object v0, p0, Lcom/tutk/sample/AVAPI/MainActivity$2;->this$0:Lcom/tutk/sample/AVAPI/MainActivity;

    invoke-virtual {v0, p1}, Lcom/tutk/sample/AVAPI/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

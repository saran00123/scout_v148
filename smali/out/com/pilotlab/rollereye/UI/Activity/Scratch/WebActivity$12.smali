.class Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$12;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->saveCodeRep(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)V
    .registers 2

    .line 787
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 790
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 791
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$12;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->finish()V

    return-void
.end method

.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$11;
.super Ljava/lang/Object;
.source "RecordActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)V
    .registers 2

    .line 693
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$11;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 696
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$16;
.super Ljava/lang/Object;
.source "PatrolActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)V
    .registers 2

    .line 782
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$16;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 785
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
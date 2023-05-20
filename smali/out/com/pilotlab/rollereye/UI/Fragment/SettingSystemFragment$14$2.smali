.class Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14$2;
.super Ljava/lang/Object;
.source "SettingSystemFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;)V
    .registers 2

    .line 858
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14$2;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 861
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.class public Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItem;
.super Ljava/lang/Object;
.source "ActionSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SheetItem"
.end annotation


# instance fields
.field color:Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;

.field itemClickListener:Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$OnSheetItemClickListener;

.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;Ljava/lang/String;Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$OnSheetItemClickListener;)V
    .registers 5

    .line 219
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItem;->this$0:Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p2, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItem;->name:Ljava/lang/String;

    .line 221
    iput-object p3, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItem;->color:Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;

    .line 222
    iput-object p4, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItem;->itemClickListener:Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$OnSheetItemClickListener;

    return-void
.end method

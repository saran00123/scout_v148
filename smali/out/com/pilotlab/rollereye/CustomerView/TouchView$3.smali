.class synthetic Lcom/pilotlab/rollereye/CustomerView/TouchView$3;
.super Ljava/lang/Object;
.source "TouchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/CustomerView/TouchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$pilotlab$rollereye$Bean$PadLocationType:[I

.field static final synthetic $SwitchMap$com$pilotlab$rollereye$Bean$PadStyle:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 193
    invoke-static {}, Lcom/pilotlab/rollereye/Bean/PadStyle;->values()[Lcom/pilotlab/rollereye/Bean/PadStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pilotlab/rollereye/CustomerView/TouchView$3;->$SwitchMap$com$pilotlab$rollereye$Bean$PadStyle:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/pilotlab/rollereye/CustomerView/TouchView$3;->$SwitchMap$com$pilotlab$rollereye$Bean$PadStyle:[I

    sget-object v2, Lcom/pilotlab/rollereye/Bean/PadStyle;->FLOATING:Lcom/pilotlab/rollereye/Bean/PadStyle;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/PadStyle;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lcom/pilotlab/rollereye/CustomerView/TouchView$3;->$SwitchMap$com$pilotlab$rollereye$Bean$PadStyle:[I

    sget-object v3, Lcom/pilotlab/rollereye/Bean/PadStyle;->FIXED:Lcom/pilotlab/rollereye/Bean/PadStyle;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/PadStyle;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v2, Lcom/pilotlab/rollereye/CustomerView/TouchView$3;->$SwitchMap$com$pilotlab$rollereye$Bean$PadStyle:[I

    sget-object v3, Lcom/pilotlab/rollereye/Bean/PadStyle;->PUSHED:Lcom/pilotlab/rollereye/Bean/PadStyle;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/PadStyle;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    .line 130
    :catch_2a
    invoke-static {}, Lcom/pilotlab/rollereye/Bean/PadLocationType;->values()[Lcom/pilotlab/rollereye/Bean/PadLocationType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/pilotlab/rollereye/CustomerView/TouchView$3;->$SwitchMap$com$pilotlab$rollereye$Bean$PadLocationType:[I

    :try_start_33
    sget-object v2, Lcom/pilotlab/rollereye/CustomerView/TouchView$3;->$SwitchMap$com$pilotlab$rollereye$Bean$PadLocationType:[I

    sget-object v3, Lcom/pilotlab/rollereye/Bean/PadLocationType;->LEFT_BOT:Lcom/pilotlab/rollereye/Bean/PadLocationType;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/PadLocationType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3d
    sget-object v0, Lcom/pilotlab/rollereye/CustomerView/TouchView$3;->$SwitchMap$com$pilotlab$rollereye$Bean$PadLocationType:[I

    sget-object v2, Lcom/pilotlab/rollereye/Bean/PadLocationType;->RIGHT_BOT:Lcom/pilotlab/rollereye/Bean/PadLocationType;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/PadLocationType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_47} :catch_47

    :catch_47
    return-void
.end method

.class public Lcom/pilotlab/rollereye/CustomerView/TimePicker;
.super Landroid/widget/LinearLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;,
        Lcom/pilotlab/rollereye/CustomerView/TimePicker$ResultHandler;
    }
.end annotation


# instance fields
.field private MAXHOUR:I

.field private final MAXMINUTE:I

.field private MINHOUR:I

.field private final MINMINUTE:I

.field private context:Landroid/content/Context;

.field private currHour:Ljava/lang/String;

.field private currMin:Ljava/lang/String;

.field private currtime:Ljava/lang/String;

.field private handler:Lcom/pilotlab/rollereye/CustomerView/TimePicker$ResultHandler;

.field private hour:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hour_pv:Lcom/pilotlab/rollereye/CustomerView/PickerView;

.field private minute:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private minute_pv:Lcom/pilotlab/rollereye/CustomerView/PickerView;

.field private scrollUnits:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    sget-object v0, Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;->HOUR:Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;

    iget v0, v0, Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;->value:I

    sget-object v1, Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;->MINUTE:Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;

    iget v1, v1, Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;->value:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->scrollUnits:I

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->currtime:Ljava/lang/String;

    const/16 v0, 0x3b

    .line 49
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->MAXMINUTE:I

    const/16 v0, 0x17

    .line 50
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->MAXHOUR:I

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->MINMINUTE:I

    .line 52
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->MINHOUR:I

    .line 58
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->context:Landroid/content/Context;

    .line 59
    invoke-direct {p0}, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    sget-object p2, Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;->HOUR:Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;

    iget p2, p2, Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;->value:I

    sget-object v0, Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;->MINUTE:Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;

    iget v0, v0, Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;->value:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->scrollUnits:I

    const-string p2, ""

    .line 45
    iput-object p2, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->currtime:Ljava/lang/String;

    const/16 p2, 0x3b

    .line 49
    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->MAXMINUTE:I

    const/16 p2, 0x17

    .line 50
    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->MAXHOUR:I

    const/4 p2, 0x0

    .line 51
    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->MINMINUTE:I

    .line 52
    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->MINHOUR:I

    .line 64
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->context:Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->initView()V

    return-void
.end method

.method private SetSelectedCal(Ljava/lang/String;)V
    .registers 3

    const-string v0, ":"

    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 147
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->currHour:Ljava/lang/String;

    const/4 v0, 0x1

    .line 148
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->currMin:Ljava/lang/String;

    .line 150
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->hour_pv:Lcom/pilotlab/rollereye/CustomerView/PickerView;

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->currHour:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->setSelected(Ljava/lang/String;)V

    .line 151
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->minute_pv:Lcom/pilotlab/rollereye/CustomerView/PickerView;

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->currMin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->setSelected(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/CustomerView/TimePicker;)Ljava/lang/String;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->currHour:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/pilotlab/rollereye/CustomerView/TimePicker;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->currHour:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/CustomerView/TimePicker;I)Ljava/lang/String;
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->fomatTimeUnit(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/CustomerView/TimePicker;)Ljava/lang/String;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->currMin:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/pilotlab/rollereye/CustomerView/TimePicker;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->currMin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/CustomerView/TimePicker;)Lcom/pilotlab/rollereye/CustomerView/TimePicker$ResultHandler;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->handler:Lcom/pilotlab/rollereye/CustomerView/TimePicker$ResultHandler;

    return-object p0
.end method

.method private addListener()V
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->hour_pv:Lcom/pilotlab/rollereye/CustomerView/PickerView;

    new-instance v1, Lcom/pilotlab/rollereye/CustomerView/TimePicker$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/CustomerView/TimePicker$1;-><init>(Lcom/pilotlab/rollereye/CustomerView/TimePicker;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->setOnSelectListener(Lcom/pilotlab/rollereye/CustomerView/PickerView$onSelectListener;)V

    .line 120
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->minute_pv:Lcom/pilotlab/rollereye/CustomerView/PickerView;

    new-instance v1, Lcom/pilotlab/rollereye/CustomerView/TimePicker$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/CustomerView/TimePicker$2;-><init>(Lcom/pilotlab/rollereye/CustomerView/TimePicker;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->setOnSelectListener(Lcom/pilotlab/rollereye/CustomerView/PickerView$onSelectListener;)V

    return-void
.end method

.method private excuteScroll()V
    .registers 6

    .line 155
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->hour_pv:Lcom/pilotlab/rollereye/CustomerView/PickerView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->hour:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_1b

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->scrollUnits:I

    sget-object v4, Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;->HOUR:Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;

    iget v4, v4, Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;->value:I

    and-int/2addr v1, v4

    sget-object v4, Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;->HOUR:Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;

    iget v4, v4, Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;->value:I

    if-ne v1, v4, :cond_1b

    move v1, v3

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->setCanScroll(Z)V

    .line 157
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->minute_pv:Lcom/pilotlab/rollereye/CustomerView/PickerView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->minute:Ljava/util/ArrayList;

    .line 158
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_37

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->scrollUnits:I

    sget-object v4, Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;->MINUTE:Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;

    iget v4, v4, Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;->value:I

    and-int/2addr v1, v4

    sget-object v4, Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;->MINUTE:Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;

    iget v4, v4, Lcom/pilotlab/rollereye/CustomerView/TimePicker$SCROLLTYPE;->value:I

    if-ne v1, v4, :cond_37

    move v2, v3

    :cond_37
    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->setCanScroll(Z)V

    return-void
.end method

.method private fomatTimeUnit(I)Ljava/lang/String;
    .registers 4

    const/16 v0, 0xa

    if-ge p1, v0, :cond_1a

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1e

    :cond_1a
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_1e
    return-object p1
.end method

.method private initArrayList()V
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->hour:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->hour:Ljava/util/ArrayList;

    .line 105
    :cond_b
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->minute:Ljava/util/ArrayList;

    if-nez v0, :cond_16

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->minute:Ljava/util/ArrayList;

    .line 108
    :cond_16
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->hour:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 109
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->minute:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private initTimer()V
    .registers 4

    .line 83
    invoke-direct {p0}, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->initArrayList()V

    .line 85
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->MINHOUR:I

    :goto_5
    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->MAXHOUR:I

    if-gt v0, v1, :cond_15

    .line 86
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->hour:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->fomatTimeUnit(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_15
    const/4 v0, 0x0

    :goto_16
    const/16 v1, 0x3b

    if-gt v0, v1, :cond_26

    .line 90
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->minute:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->fomatTimeUnit(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 93
    :cond_26
    invoke-direct {p0}, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->loadComponent()V

    return-void
.end method

.method private initView()V
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->context:Landroid/content/Context;

    const v1, 0x7f0d0129

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 74
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 75
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->currtime:Ljava/lang/String;

    const v0, 0x7f0a03d0

    .line 76
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/CustomerView/PickerView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->hour_pv:Lcom/pilotlab/rollereye/CustomerView/PickerView;

    const v0, 0x7f0a0482

    .line 77
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/CustomerView/PickerView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->minute_pv:Lcom/pilotlab/rollereye/CustomerView/PickerView;

    .line 78
    invoke-direct {p0}, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->initTimer()V

    .line 79
    invoke-direct {p0}, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->addListener()V

    return-void
.end method

.method private loadComponent()V
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->hour_pv:Lcom/pilotlab/rollereye/CustomerView/PickerView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->hour:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->setData(Ljava/util/List;)V

    .line 138
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->minute_pv:Lcom/pilotlab/rollereye/CustomerView/PickerView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->minute:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->setData(Ljava/util/List;)V

    .line 139
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->currtime:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->SetSelectedCal(Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->excuteScroll()V

    return-void
.end method


# virtual methods
.method public setCurrentTime(Ljava/lang/String;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->currtime:Ljava/lang/String;

    .line 132
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->SetSelectedCal(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->invalidate()V

    return-void
.end method

.method public setResultListener(Lcom/pilotlab/rollereye/CustomerView/TimePicker$ResultHandler;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->handler:Lcom/pilotlab/rollereye/CustomerView/TimePicker$ResultHandler;

    return-void
.end method

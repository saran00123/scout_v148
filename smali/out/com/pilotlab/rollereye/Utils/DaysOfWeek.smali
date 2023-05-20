.class public Lcom/pilotlab/rollereye/Utils/DaysOfWeek;
.super Ljava/lang/Object;
.source "DaysOfWeek.java"


# static fields
.field private static DAY_MAP:[I


# instance fields
.field private mDays:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x7

    .line 12
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/pilotlab/rollereye/Utils/DaysOfWeek;->DAY_MAP:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/pilotlab/rollereye/Utils/DaysOfWeek;->mDays:I

    return-void
.end method

.method private isSet(I)Z
    .registers 4

    .line 61
    iget v0, p0, Lcom/pilotlab/rollereye/Utils/DaysOfWeek;->mDays:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-lez p1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method


# virtual methods
.method public getBooleanArray()[Z
    .registers 5

    const/4 v0, 0x7

    .line 82
    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_f

    .line 84
    invoke-direct {p0, v2}, Lcom/pilotlab/rollereye/Utils/DaysOfWeek;->isSet(I)Z

    move-result v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_f
    return-object v1
.end method

.method public getCoded()I
    .registers 2

    .line 77
    iget v0, p0, Lcom/pilotlab/rollereye/Utils/DaysOfWeek;->mDays:I

    return v0
.end method

.method public getNextAlarm(Ljava/util/Calendar;)I
    .registers 5

    .line 99
    iget v0, p0, Lcom/pilotlab/rollereye/Utils/DaysOfWeek;->mDays:I

    if-nez v0, :cond_6

    const/4 p1, -0x1

    return p1

    :cond_6
    const/4 v0, 0x7

    .line 103
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    rem-int/2addr p1, v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_1e

    add-int v2, p1, v1

    .line 108
    rem-int/2addr v2, v0

    .line 109
    invoke-direct {p0, v2}, Lcom/pilotlab/rollereye/Utils/DaysOfWeek;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_1e

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1e
    :goto_1e
    return v1
.end method

.method public isRepeatSet()Z
    .registers 2

    .line 90
    iget v0, p0, Lcom/pilotlab/rollereye/Utils/DaysOfWeek;->mDays:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public set(IZ)V
    .registers 4

    const/4 v0, 0x1

    if-eqz p2, :cond_b

    .line 66
    iget p2, p0, Lcom/pilotlab/rollereye/Utils/DaysOfWeek;->mDays:I

    shl-int p1, v0, p1

    or-int/2addr p1, p2

    iput p1, p0, Lcom/pilotlab/rollereye/Utils/DaysOfWeek;->mDays:I

    goto :goto_13

    .line 68
    :cond_b
    iget p2, p0, Lcom/pilotlab/rollereye/Utils/DaysOfWeek;->mDays:I

    shl-int p1, v0, p1

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/pilotlab/rollereye/Utils/DaysOfWeek;->mDays:I

    :goto_13
    return-void
.end method

.method public set(Lcom/pilotlab/rollereye/Utils/DaysOfWeek;)V
    .registers 2

    .line 73
    iget p1, p1, Lcom/pilotlab/rollereye/Utils/DaysOfWeek;->mDays:I

    iput p1, p0, Lcom/pilotlab/rollereye/Utils/DaysOfWeek;->mDays:I

    return-void
.end method

.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 9

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    iget v1, p0, Lcom/pilotlab/rollereye/Utils/DaysOfWeek;->mDays:I

    if-nez v1, :cond_1a

    if-eqz p2, :cond_17

    const p2, 0x7f110244

    .line 27
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_19

    :cond_17
    const-string p1, ""

    :goto_19
    return-object p1

    :cond_1a
    const/16 p2, 0x7f

    if-ne v1, p2, :cond_2a

    const p2, 0x7f110243

    .line 32
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2a
    const/4 p2, 0x0

    move v2, p2

    :goto_2c
    const/4 v3, 0x1

    if-lez v1, :cond_38

    and-int/lit8 v4, v1, 0x1

    if-ne v4, v3, :cond_35

    add-int/lit8 v2, v2, 0x1

    :cond_35
    shr-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 44
    :cond_38
    new-instance v1, Ljava/text/DateFormatSymbols;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v4}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    if-le v2, v3, :cond_46

    .line 45
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    goto :goto_4a

    .line 46
    :cond_46
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v1

    :goto_4a
    const/4 v4, 0x7

    if-ge p2, v4, :cond_6e

    .line 50
    iget v4, p0, Lcom/pilotlab/rollereye/Utils/DaysOfWeek;->mDays:I

    shl-int v5, v3, p2

    and-int/2addr v4, v5

    if-eqz v4, :cond_6b

    .line 51
    sget-object v4, Lcom/pilotlab/rollereye/Utils/DaysOfWeek;->DAY_MAP:[I

    aget v4, v4, p2

    aget-object v4, v1, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_6b

    const v4, 0x7f110242

    .line 54
    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_6b
    add-int/lit8 p2, p2, 0x1

    goto :goto_4a

    .line 57
    :cond_6e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

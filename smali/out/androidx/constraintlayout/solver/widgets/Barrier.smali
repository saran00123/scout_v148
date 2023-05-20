.class public Landroidx/constraintlayout/solver/widgets/Barrier;
.super Landroidx/constraintlayout/solver/widgets/HelperWidget;
.source "Barrier.java"


# static fields
.field public static final BOTTOM:I = 0x3

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final TOP:I = 0x2

.field private static final USE_RELAX_GONE:Z = false

.field private static final USE_RESOLUTION:Z = true


# instance fields
.field private mAllowsGoneWidget:Z

.field private mBarrierType:I

.field private mMargin:I

.field resolved:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 42
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/HelperWidget;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    const/4 v1, 0x1

    .line 38
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    .line 39
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mMargin:I

    .line 40
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->resolved:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 43
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/HelperWidget;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    const/4 v1, 0x1

    .line 38
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    .line 39
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mMargin:I

    .line 40
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->resolved:Z

    .line 44
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/Barrier;->setDebugName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/solver/LinearSystem;Z)V
    .registers 15

    .line 119
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 120
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v2, 0x2

    aput-object v0, p2, v2

    .line 121
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v3, 0x1

    aput-object v0, p2, v3

    .line 122
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v4, 0x3

    aput-object v0, p2, v4

    move p2, v1

    .line 123
    :goto_1d
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    array-length v0, v0

    if-ge p2, v0, :cond_33

    .line 124
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p2

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p2

    invoke-virtual {p1, v5}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v5

    iput-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1d

    .line 126
    :cond_33
    iget p2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-ltz p2, :cond_224

    const/4 v0, 0x4

    if-ge p2, v0, :cond_224

    .line 127
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    aget-object p2, p2, v5

    .line 133
    iget-boolean v5, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->resolved:Z

    if-nez v5, :cond_47

    .line 134
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Barrier;->allSolved()Z

    .line 136
    :cond_47
    iget-boolean v5, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->resolved:Z

    if-eqz v5, :cond_7e

    .line 137
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->resolved:Z

    .line 138
    iget p2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eqz p2, :cond_6b

    if-ne p2, v3, :cond_54

    goto :goto_6b

    :cond_54
    if-eq p2, v2, :cond_58

    if-ne p2, v4, :cond_7d

    .line 142
    :cond_58
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mY:I

    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 143
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mY:I

    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    goto :goto_7d

    .line 139
    :cond_6b
    :goto_6b
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mX:I

    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 140
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mX:I

    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    :cond_7d
    :goto_7d
    return-void

    :cond_7e
    move v5, v1

    .line 152
    :goto_7f
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v5, v6, :cond_cc

    .line 153
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v6, v6, v5

    .line 154
    iget-boolean v7, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v7, :cond_92

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v7

    if-nez v7, :cond_92

    goto :goto_c9

    .line 157
    :cond_92
    iget v7, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v7, :cond_98

    if-ne v7, v3, :cond_ae

    .line 158
    :cond_98
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_ae

    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_ae

    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_ae

    :goto_ac
    move v5, v3

    goto :goto_cd

    .line 162
    :cond_ae
    iget v7, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eq v7, v2, :cond_b4

    if-ne v7, v4, :cond_c9

    .line 163
    :cond_b4
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_c9

    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_c9

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_c9

    goto :goto_ac

    :cond_c9
    :goto_c9
    add-int/lit8 v5, v5, 0x1

    goto :goto_7f

    :cond_cc
    move v5, v1

    .line 170
    :goto_cd
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    move-result v6

    if-nez v6, :cond_e0

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    move-result v6

    if-eqz v6, :cond_de

    goto :goto_e0

    :cond_de
    move v6, v1

    goto :goto_e1

    :cond_e0
    :goto_e0
    move v6, v3

    .line 171
    :goto_e1
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    move-result v7

    if-nez v7, :cond_f4

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    move-result v7

    if-eqz v7, :cond_f2

    goto :goto_f4

    :cond_f2
    move v7, v1

    goto :goto_f5

    :cond_f4
    :goto_f4
    move v7, v3

    :goto_f5
    if-nez v5, :cond_111

    .line 172
    iget v8, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-nez v8, :cond_fd

    if-nez v6, :cond_10f

    :cond_fd
    iget v8, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-ne v8, v2, :cond_103

    if-nez v7, :cond_10f

    :cond_103
    iget v8, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-ne v8, v3, :cond_109

    if-nez v6, :cond_10f

    :cond_109
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-ne v6, v4, :cond_111

    if-eqz v7, :cond_111

    :cond_10f
    move v6, v3

    goto :goto_112

    :cond_111
    move v6, v1

    :goto_112
    const/4 v7, 0x5

    if-nez v6, :cond_116

    move v7, v0

    :cond_116
    move v6, v1

    .line 181
    :goto_117
    iget v8, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v6, v8, :cond_180

    .line 182
    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v8, v8, v6

    .line 183
    iget-boolean v9, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v9, :cond_12a

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v9

    if-nez v9, :cond_12a

    goto :goto_17d

    .line 186
    :cond_12a
    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v10, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    aget-object v9, v9, v10

    invoke-virtual {p1, v9}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    .line 187
    iget-object v10, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v11, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    aget-object v10, v10, v11

    iput-object v9, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 189
    iget-object v10, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v11, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    aget-object v10, v10, v11

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_15c

    iget-object v10, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v11, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    aget-object v10, v10, v11

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v10, p0, :cond_15c

    .line 191
    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v10, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    aget-object v8, v8, v10

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v8, v1

    goto :goto_15d

    :cond_15c
    move v8, v1

    .line 193
    :goto_15d
    iget v10, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v10, :cond_16d

    if-ne v10, v2, :cond_164

    goto :goto_16d

    .line 196
    :cond_164
    iget-object v10, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v11, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mMargin:I

    add-int/2addr v11, v8

    invoke-virtual {p1, v10, v9, v11, v5}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterBarrier(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IZ)V

    goto :goto_175

    .line 194
    :cond_16d
    :goto_16d
    iget-object v10, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v11, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mMargin:I

    sub-int/2addr v11, v8

    invoke-virtual {p1, v10, v9, v11, v5}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerBarrier(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IZ)V

    .line 203
    :goto_175
    iget-object v10, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v11, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mMargin:I

    add-int/2addr v11, v8

    invoke-virtual {p1, v10, v9, v11, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    :goto_17d
    add-int/lit8 v6, v6, 0x1

    goto :goto_117

    .line 210
    :cond_180
    iget p2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    const/16 v5, 0x8

    if-nez p2, :cond_1ad

    .line 211
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, p2, v2, v1, v5}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 212
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, p2, v2, v1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 213
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, p2, v0, v1, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto/16 :goto_224

    :cond_1ad
    if-ne p2, v3, :cond_1d5

    .line 215
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, p2, v2, v1, v5}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 216
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, p2, v2, v1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 217
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, p2, v0, v1, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_224

    :cond_1d5
    if-ne p2, v2, :cond_1fd

    .line 219
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, p2, v2, v1, v5}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 220
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, p2, v2, v1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 221
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, p2, v0, v1, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_224

    :cond_1fd
    if-ne p2, v4, :cond_224

    .line 223
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, p2, v2, v1, v5}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 224
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, p2, v2, v1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 225
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, p2, v0, v1, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    :cond_224
    :goto_224
    return-void
.end method

.method public allSolved()Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    .line 254
    :goto_4
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgetsCount:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ge v2, v4, :cond_37

    .line 255
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v4, v4, v2

    .line 256
    iget-boolean v7, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v7, :cond_19

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v7

    if-nez v7, :cond_19

    goto :goto_34

    .line 259
    :cond_19
    iget v7, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v7, :cond_1f

    if-ne v7, v1, :cond_27

    :cond_1f
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    move-result v7

    if-nez v7, :cond_27

    :goto_25
    move v3, v0

    goto :goto_34

    .line 261
    :cond_27
    iget v7, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eq v7, v6, :cond_2d

    if-ne v7, v5, :cond_34

    :cond_2d
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isResolvedVertically()Z

    move-result v4

    if-nez v4, :cond_34

    goto :goto_25

    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_37
    if-eqz v3, :cond_e8

    .line 266
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgetsCount:I

    if-lez v2, :cond_e8

    move v2, v0

    move v3, v2

    .line 270
    :goto_3f
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v0, v4, :cond_d4

    .line 271
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v4, v4, v0

    .line 272
    iget-boolean v7, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v7, :cond_53

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v7

    if-nez v7, :cond_53

    goto/16 :goto_d0

    :cond_53
    if-nez v3, :cond_8b

    .line 276
    iget v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-nez v3, :cond_64

    .line 277
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    goto :goto_8a

    :cond_64
    if-ne v3, v1, :cond_71

    .line 279
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    goto :goto_8a

    :cond_71
    if-ne v3, v6, :cond_7e

    .line 281
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    goto :goto_8a

    :cond_7e
    if-ne v3, v5, :cond_8a

    .line 283
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    :cond_8a
    :goto_8a
    move v3, v1

    .line 287
    :cond_8b
    iget v7, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-nez v7, :cond_9e

    .line 288
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_d0

    :cond_9e
    if-ne v7, v1, :cond_af

    .line 290
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_d0

    :cond_af
    if-ne v7, v6, :cond_c0

    .line 292
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_d0

    :cond_c0
    if-ne v7, v5, :cond_d0

    .line 294
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_d0
    :goto_d0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3f

    .line 297
    :cond_d4
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mMargin:I

    add-int/2addr v2, v0

    .line 298
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v0, :cond_e2

    if-ne v0, v1, :cond_de

    goto :goto_e2

    .line 301
    :cond_de
    invoke-virtual {p0, v2, v2}, Landroidx/constraintlayout/solver/widgets/Barrier;->setFinalVertical(II)V

    goto :goto_e5

    .line 299
    :cond_e2
    :goto_e2
    invoke-virtual {p0, v2, v2}, Landroidx/constraintlayout/solver/widgets/Barrier;->setFinalHorizontal(II)V

    .line 306
    :goto_e5
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->resolved:Z

    return v1

    :cond_e8
    return v0
.end method

.method public allowedInBarrier()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public allowsGoneWidget()Z
    .registers 2

    .line 60
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    return v0
.end method

.method public copy(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Ljava/util/HashMap<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/HelperWidget;->copy(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 73
    check-cast p1, Landroidx/constraintlayout/solver/widgets/Barrier;

    .line 74
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    .line 75
    iget-boolean p2, p1, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    iput-boolean p2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    .line 76
    iget p1, p1, Landroidx/constraintlayout/solver/widgets/Barrier;->mMargin:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mMargin:I

    return-void
.end method

.method public getBarrierType()I
    .registers 2

    .line 52
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    return v0
.end method

.method public getMargin()I
    .registers 2

    .line 234
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mMargin:I

    return v0
.end method

.method public getOrientation()I
    .registers 4

    .line 238
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    const/4 v2, 0x3

    if-eq v0, v2, :cond_f

    const/4 v0, -0x1

    return v0

    :cond_f
    return v1

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public isResolvedHorizontally()Z
    .registers 2

    .line 63
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->resolved:Z

    return v0
.end method

.method public isResolvedVertically()Z
    .registers 2

    .line 67
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->resolved:Z

    return v0
.end method

.method protected markWidgets()V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 94
    :goto_2
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v1, v2, :cond_22

    .line 95
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v2, v2, v1

    .line 96
    iget v3, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1c

    if-ne v3, v4, :cond_12

    goto :goto_1c

    :cond_12
    const/4 v5, 0x2

    if-eq v3, v5, :cond_18

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1f

    .line 99
    :cond_18
    invoke-virtual {v2, v4, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setInBarrier(IZ)V

    goto :goto_1f

    .line 97
    :cond_1c
    :goto_1c
    invoke-virtual {v2, v0, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setInBarrier(IZ)V

    :cond_1f
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_22
    return-void
.end method

.method public setAllowsGoneWidget(Z)V
    .registers 2

    .line 58
    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    return-void
.end method

.method public setBarrierType(I)V
    .registers 2

    .line 55
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    return-void
.end method

.method public setMargin(I)V
    .registers 2

    .line 230
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mMargin:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Barrier] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Barrier;->getDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 82
    :goto_1b
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v1, v2, :cond_4c

    .line 83
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v2, v2, v1

    if-lez v1, :cond_36

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 89
    :cond_4c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

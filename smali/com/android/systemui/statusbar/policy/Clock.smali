.class public Lcom/android/systemui/statusbar/policy/Clock;
.super Landroid/widget/TextView;
.source "Clock.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final TEXT_SIZE_DEFAULT:F = 0.0f

.field private static final TEXT_SIZE_LIMIT:I = 0xaf

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-Clock"


# instance fields
.field private final AM_PM_STYLE:I

.field private final AM_PM_STYLE_GONE:I

.field private final AM_PM_STYLE_NORMAL:I

.field private final AM_PM_STYLE_SMALL:I

.field private mAttached:Z

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private mExpandedHeader:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    const/high16 v0, 0x4200

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x4320

    div-float/2addr v0, v1

    sput v0, Lcom/android/systemui/statusbar/policy/Clock;->TEXT_SIZE_DEFAULT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    iput v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE_NORMAL:I

    .line 65
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE_SMALL:I

    .line 66
    iput v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE_GONE:I

    .line 68
    iput v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE:I

    .line 122
    new-instance v1, Lcom/android/systemui/statusbar/policy/Clock$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/Clock$1;-><init>(Lcom/android/systemui/statusbar/policy/Clock;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    sget-object v1, Lcom/android/systemui/R$styleable;->Clock:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mExpandedHeader:Z

    .line 85
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    return-void
.end method

.method private final getSmallTime(Ljava/util/Calendar;)Ljava/lang/CharSequence;
    .locals 21
    .parameter "mCalendar"

    .prologue
    .line 196
    const-string v18, "STATUSBAR-Clock"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getSmallTime:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 199
    .local v7, context:Landroid/content/Context;
    invoke-static {v7}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v12

    .line 200
    .local v12, is24:Z
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v8

    .line 202
    .local v8, d:Llibcore/icu/LocaleData;
    const v2, 0xef00

    .line 203
    .local v2, MAGIC1:C
    const v3, 0xef01

    .line 206
    .local v3, MAGIC2:C
    if-eqz v12, :cond_2

    iget-object v9, v8, Llibcore/icu/LocaleData;->timeFormat24:Ljava/lang/String;

    .line 207
    .local v9, format:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 214
    const/4 v4, -0x1

    .line 215
    .local v4, a:I
    const/4 v15, 0x0

    .line 216
    .local v15, quoted:Z
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_1

    .line 217
    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 219
    .local v6, c:C
    const/16 v18, 0x27

    move/from16 v0, v18

    if-ne v6, v0, :cond_0

    .line 220
    if-nez v15, :cond_3

    const/4 v15, 0x1

    .line 222
    :cond_0
    :goto_2
    if-nez v15, :cond_4

    const/16 v18, 0x61

    move/from16 v0, v18

    if-ne v6, v0, :cond_4

    .line 223
    move v4, v11

    .line 228
    .end local v6           #c:C
    :cond_1
    if-ltz v4, :cond_6

    .line 230
    move v5, v4

    .line 231
    .local v5, b:I
    :goto_3
    if-lez v4, :cond_5

    add-int/lit8 v18, v4, -0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 232
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 206
    .end local v4           #a:I
    .end local v5           #b:I
    .end local v9           #format:Ljava/lang/String;
    .end local v11           #i:I
    .end local v15           #quoted:Z
    :cond_2
    iget-object v9, v8, Llibcore/icu/LocaleData;->timeFormat12:Ljava/lang/String;

    goto :goto_0

    .line 220
    .restart local v4       #a:I
    .restart local v6       #c:C
    .restart local v9       #format:Ljava/lang/String;
    .restart local v11       #i:I
    .restart local v15       #quoted:Z
    :cond_3
    const/4 v15, 0x0

    goto :goto_2

    .line 216
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 234
    .end local v6           #c:C
    .restart local v5       #b:I
    :cond_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0xef00

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "a"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0xef01

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v19, v5, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 238
    .end local v5           #b:I
    :cond_6
    new-instance v17, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v17, sdf:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 239
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    .line 244
    .end local v4           #a:I
    .end local v11           #i:I
    .end local v15           #quoted:Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    .line 247
    .local v16, result:Ljava/lang/String;
    const v18, 0xef00

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 248
    .local v13, magic1:I
    const v18, 0xef01

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 249
    .local v14, magic2:I
    if-ltz v13, :cond_8

    if-le v14, v13, :cond_8

    .line 250
    new-instance v10, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 252
    .local v10, formatted:Landroid/text/SpannableStringBuilder;
    add-int/lit8 v18, v14, 0x1

    move/from16 v0, v18

    invoke-virtual {v10, v13, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 266
    .end local v10           #formatted:Landroid/text/SpannableStringBuilder;
    :goto_5
    return-object v10

    .line 241
    .end local v13           #magic1:I
    .end local v14           #magic2:I
    .end local v16           #result:Ljava/lang/String;
    .end local v17           #sdf:Ljava/text/SimpleDateFormat;
    :cond_7
    new-instance v17, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 242
    .restart local v17       #sdf:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    goto :goto_4

    .restart local v13       #magic1:I
    .restart local v14       #magic2:I
    .restart local v16       #result:Ljava/lang/String;
    :cond_8
    move-object/from16 v10, v16

    .line 266
    goto :goto_5
.end method

.method private static is24HourFormat(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    .line 305
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "time_12_24"

    const/4 v7, -0x2

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, value:Ljava/lang/String;
    if-nez v4, :cond_2

    .line 309
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 311
    .local v0, locale:Ljava/util/Locale;
    const/4 v5, 0x1

    invoke-static {v5, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 315
    .local v1, natural:Ljava/text/DateFormat;
    instance-of v5, v1, Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_1

    move-object v3, v1

    .line 316
    check-cast v3, Ljava/text/SimpleDateFormat;

    .line 317
    .local v3, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, pattern:Ljava/lang/String;
    const/16 v5, 0x48

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_0

    .line 320
    const-string v4, "24"

    .line 328
    .end local v2           #pattern:Ljava/lang/String;
    .end local v3           #sdf:Ljava/text/SimpleDateFormat;
    :goto_0
    const-string v5, "24"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 331
    .end local v0           #locale:Ljava/util/Locale;
    .end local v1           #natural:Ljava/text/DateFormat;
    :goto_1
    return v5

    .line 322
    .restart local v0       #locale:Ljava/util/Locale;
    .restart local v1       #natural:Ljava/text/DateFormat;
    .restart local v2       #pattern:Ljava/lang/String;
    .restart local v3       #sdf:Ljava/text/SimpleDateFormat;
    :cond_0
    const-string v4, "12"

    goto :goto_0

    .line 325
    .end local v2           #pattern:Ljava/lang/String;
    .end local v3           #sdf:Ljava/text/SimpleDateFormat;
    :cond_1
    const-string v4, "12"

    goto :goto_0

    .line 331
    .end local v0           #locale:Ljava/util/Locale;
    .end local v1           #natural:Ljava/text/DateFormat;
    :cond_2
    const-string v5, "24"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1
.end method

.method private isWVGA()Z
    .locals 8

    .prologue
    .line 284
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 286
    .local v0, disp:Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 287
    .local v1, dispMetrix:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 289
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 290
    .local v3, rawWidth:I
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 291
    .local v2, rawHeight:I
    if-le v3, v2, :cond_0

    move v4, v2

    .line 292
    .local v4, smallestWidth:I
    :goto_0
    mul-int/lit16 v6, v4, 0xa0

    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v5, v6, v7

    .line 295
    .local v5, smallestWidthDensityPixel:I
    const/16 v6, 0x154

    if-ge v5, v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    return v6

    .end local v4           #smallestWidth:I
    .end local v5           #smallestWidthDensityPixel:I
    :cond_0
    move v4, v3

    .line 291
    goto :goto_0

    .line 295
    .restart local v4       #smallestWidth:I
    .restart local v5       #smallestWidthDensityPixel:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private refreshTextSize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 272
    sget v0, Lcom/android/systemui/statusbar/policy/Clock;->TEXT_SIZE_DEFAULT:F

    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setTextSize(IF)V

    .line 273
    :goto_0
    const/high16 v0, 0x432f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getTextSize()F

    move-result v0

    const/high16 v1, 0x3f80

    sub-float/2addr v0, v1

    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setTextSize(IF)V

    .line 275
    const-string v0, "TW_TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " this.getWidth() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " paint.measureText(this.getText()) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " textsize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 281
    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 90
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 92
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    .line 94
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 110
    .end local v3           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    .line 111
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    .line 120
    :cond_0
    return-void
.end method

.method final updateClock()V
    .locals 17

    .prologue
    .line 131
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 133
    .local v6, mCalendar:Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    if-eqz v13, :cond_0

    .line 134
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 136
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v6, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 139
    const-string v13, "STATUSBAR-Clock"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateClock:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mCalendar.getTimeZone():"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " TimeZone.getDefault():"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 151
    .local v4, context:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/Clock;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    .line 152
    .local v3, b24:Z
    const/4 v10, 0x0

    .line 153
    .local v10, res:I
    const-string v2, ""

    .line 155
    .local v2, AM_PM:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 156
    const/16 v13, 0x9

    invoke-virtual {v6, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 157
    .local v1, AMPM:I
    if-nez v1, :cond_4

    .line 158
    const v10, 0x10400c1

    .line 164
    .end local v1           #AMPM:I
    :cond_1
    :goto_0
    if-eqz v10, :cond_2

    .line 165
    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 168
    :cond_2
    const v13, 0x7f0c000e

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/systemui/statusbar/policy/Clock;->getSmallTime(Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v2, v14, v15

    invoke-virtual {v4, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 172
    .local v12, timeText:Ljava/lang/String;
    if-eqz v10, :cond_5

    sget-boolean v13, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/policy/Clock;->mExpandedHeader:Z

    if-eqz v13, :cond_5

    .line 173
    :cond_3
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v12}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 174
    .local v5, formatted:Landroid/text/SpannableStringBuilder;
    const/high16 v9, 0x3f00

    .line 175
    .local v9, proportion:F
    invoke-virtual {v12, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 176
    .local v7, magic1:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    .line 177
    .local v8, magic2:I
    new-instance v11, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v11, v9}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 178
    .local v11, style:Landroid/text/style/CharacterStyle;
    add-int v13, v7, v8

    const/16 v14, 0x22

    invoke-virtual {v5, v11, v7, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 180
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    .line 191
    .end local v5           #formatted:Landroid/text/SpannableStringBuilder;
    .end local v7           #magic1:I
    .end local v8           #magic2:I
    .end local v9           #proportion:F
    .end local v11           #style:Landroid/text/style/CharacterStyle;
    :goto_1
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/systemui/statusbar/policy/Clock;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 192
    return-void

    .line 160
    .end local v12           #timeText:Ljava/lang/String;
    .restart local v1       #AMPM:I
    :cond_4
    const v10, 0x10400c2

    goto :goto_0

    .line 182
    .end local v1           #AMPM:I
    .restart local v12       #timeText:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

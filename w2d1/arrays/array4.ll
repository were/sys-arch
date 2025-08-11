; ModuleID = 'array4.c'
source_filename = "array4.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx15.0.0"

; Function Attrs: nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable(sync)
define noundef i32 @vadd128(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %4, %5
  %8 = icmp ult i64 %7, 64
  %9 = sub i64 %4, %6
  %10 = icmp ult i64 %9, 64
  %11 = or i1 %8, %10
  br i1 %11, label %203, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds i8, ptr %0, i64 16
  %14 = getelementptr inbounds i8, ptr %0, i64 32
  %15 = getelementptr inbounds i8, ptr %0, i64 48
  %16 = load <4 x i32>, ptr %0, align 4, !tbaa !6
  %17 = load <4 x i32>, ptr %13, align 4, !tbaa !6
  %18 = load <4 x i32>, ptr %14, align 4, !tbaa !6
  %19 = load <4 x i32>, ptr %15, align 4, !tbaa !6
  %20 = getelementptr inbounds i8, ptr %1, i64 16
  %21 = getelementptr inbounds i8, ptr %1, i64 32
  %22 = getelementptr inbounds i8, ptr %1, i64 48
  %23 = load <4 x i32>, ptr %1, align 4, !tbaa !6
  %24 = load <4 x i32>, ptr %20, align 4, !tbaa !6
  %25 = load <4 x i32>, ptr %21, align 4, !tbaa !6
  %26 = load <4 x i32>, ptr %22, align 4, !tbaa !6
  %27 = add nsw <4 x i32> %23, %16
  %28 = add nsw <4 x i32> %24, %17
  %29 = add nsw <4 x i32> %25, %18
  %30 = add nsw <4 x i32> %26, %19
  %31 = getelementptr inbounds i8, ptr %2, i64 16
  %32 = getelementptr inbounds i8, ptr %2, i64 32
  %33 = getelementptr inbounds i8, ptr %2, i64 48
  store <4 x i32> %27, ptr %2, align 4, !tbaa !6
  store <4 x i32> %28, ptr %31, align 4, !tbaa !6
  store <4 x i32> %29, ptr %32, align 4, !tbaa !6
  store <4 x i32> %30, ptr %33, align 4, !tbaa !6
  %34 = getelementptr inbounds i8, ptr %0, i64 64
  %35 = getelementptr inbounds i8, ptr %0, i64 80
  %36 = getelementptr inbounds i8, ptr %0, i64 96
  %37 = getelementptr inbounds i8, ptr %0, i64 112
  %38 = load <4 x i32>, ptr %34, align 4, !tbaa !6
  %39 = load <4 x i32>, ptr %35, align 4, !tbaa !6
  %40 = load <4 x i32>, ptr %36, align 4, !tbaa !6
  %41 = load <4 x i32>, ptr %37, align 4, !tbaa !6
  %42 = getelementptr inbounds i8, ptr %1, i64 64
  %43 = getelementptr inbounds i8, ptr %1, i64 80
  %44 = getelementptr inbounds i8, ptr %1, i64 96
  %45 = getelementptr inbounds i8, ptr %1, i64 112
  %46 = load <4 x i32>, ptr %42, align 4, !tbaa !6
  %47 = load <4 x i32>, ptr %43, align 4, !tbaa !6
  %48 = load <4 x i32>, ptr %44, align 4, !tbaa !6
  %49 = load <4 x i32>, ptr %45, align 4, !tbaa !6
  %50 = add nsw <4 x i32> %46, %38
  %51 = add nsw <4 x i32> %47, %39
  %52 = add nsw <4 x i32> %48, %40
  %53 = add nsw <4 x i32> %49, %41
  %54 = getelementptr inbounds i8, ptr %2, i64 64
  %55 = getelementptr inbounds i8, ptr %2, i64 80
  %56 = getelementptr inbounds i8, ptr %2, i64 96
  %57 = getelementptr inbounds i8, ptr %2, i64 112
  store <4 x i32> %50, ptr %54, align 4, !tbaa !6
  store <4 x i32> %51, ptr %55, align 4, !tbaa !6
  store <4 x i32> %52, ptr %56, align 4, !tbaa !6
  store <4 x i32> %53, ptr %57, align 4, !tbaa !6
  %58 = getelementptr inbounds i8, ptr %0, i64 128
  %59 = getelementptr inbounds i8, ptr %0, i64 144
  %60 = getelementptr inbounds i8, ptr %0, i64 160
  %61 = getelementptr inbounds i8, ptr %0, i64 176
  %62 = load <4 x i32>, ptr %58, align 4, !tbaa !6
  %63 = load <4 x i32>, ptr %59, align 4, !tbaa !6
  %64 = load <4 x i32>, ptr %60, align 4, !tbaa !6
  %65 = load <4 x i32>, ptr %61, align 4, !tbaa !6
  %66 = getelementptr inbounds i8, ptr %1, i64 128
  %67 = getelementptr inbounds i8, ptr %1, i64 144
  %68 = getelementptr inbounds i8, ptr %1, i64 160
  %69 = getelementptr inbounds i8, ptr %1, i64 176
  %70 = load <4 x i32>, ptr %66, align 4, !tbaa !6
  %71 = load <4 x i32>, ptr %67, align 4, !tbaa !6
  %72 = load <4 x i32>, ptr %68, align 4, !tbaa !6
  %73 = load <4 x i32>, ptr %69, align 4, !tbaa !6
  %74 = add nsw <4 x i32> %70, %62
  %75 = add nsw <4 x i32> %71, %63
  %76 = add nsw <4 x i32> %72, %64
  %77 = add nsw <4 x i32> %73, %65
  %78 = getelementptr inbounds i8, ptr %2, i64 128
  %79 = getelementptr inbounds i8, ptr %2, i64 144
  %80 = getelementptr inbounds i8, ptr %2, i64 160
  %81 = getelementptr inbounds i8, ptr %2, i64 176
  store <4 x i32> %74, ptr %78, align 4, !tbaa !6
  store <4 x i32> %75, ptr %79, align 4, !tbaa !6
  store <4 x i32> %76, ptr %80, align 4, !tbaa !6
  store <4 x i32> %77, ptr %81, align 4, !tbaa !6
  %82 = getelementptr inbounds i8, ptr %0, i64 192
  %83 = getelementptr inbounds i8, ptr %0, i64 208
  %84 = getelementptr inbounds i8, ptr %0, i64 224
  %85 = getelementptr inbounds i8, ptr %0, i64 240
  %86 = load <4 x i32>, ptr %82, align 4, !tbaa !6
  %87 = load <4 x i32>, ptr %83, align 4, !tbaa !6
  %88 = load <4 x i32>, ptr %84, align 4, !tbaa !6
  %89 = load <4 x i32>, ptr %85, align 4, !tbaa !6
  %90 = getelementptr inbounds i8, ptr %1, i64 192
  %91 = getelementptr inbounds i8, ptr %1, i64 208
  %92 = getelementptr inbounds i8, ptr %1, i64 224
  %93 = getelementptr inbounds i8, ptr %1, i64 240
  %94 = load <4 x i32>, ptr %90, align 4, !tbaa !6
  %95 = load <4 x i32>, ptr %91, align 4, !tbaa !6
  %96 = load <4 x i32>, ptr %92, align 4, !tbaa !6
  %97 = load <4 x i32>, ptr %93, align 4, !tbaa !6
  %98 = add nsw <4 x i32> %94, %86
  %99 = add nsw <4 x i32> %95, %87
  %100 = add nsw <4 x i32> %96, %88
  %101 = add nsw <4 x i32> %97, %89
  %102 = getelementptr inbounds i8, ptr %2, i64 192
  %103 = getelementptr inbounds i8, ptr %2, i64 208
  %104 = getelementptr inbounds i8, ptr %2, i64 224
  %105 = getelementptr inbounds i8, ptr %2, i64 240
  store <4 x i32> %98, ptr %102, align 4, !tbaa !6
  store <4 x i32> %99, ptr %103, align 4, !tbaa !6
  store <4 x i32> %100, ptr %104, align 4, !tbaa !6
  store <4 x i32> %101, ptr %105, align 4, !tbaa !6
  %106 = getelementptr inbounds i8, ptr %0, i64 256
  %107 = getelementptr inbounds i8, ptr %0, i64 272
  %108 = getelementptr inbounds i8, ptr %0, i64 288
  %109 = getelementptr inbounds i8, ptr %0, i64 304
  %110 = load <4 x i32>, ptr %106, align 4, !tbaa !6
  %111 = load <4 x i32>, ptr %107, align 4, !tbaa !6
  %112 = load <4 x i32>, ptr %108, align 4, !tbaa !6
  %113 = load <4 x i32>, ptr %109, align 4, !tbaa !6
  %114 = getelementptr inbounds i8, ptr %1, i64 256
  %115 = getelementptr inbounds i8, ptr %1, i64 272
  %116 = getelementptr inbounds i8, ptr %1, i64 288
  %117 = getelementptr inbounds i8, ptr %1, i64 304
  %118 = load <4 x i32>, ptr %114, align 4, !tbaa !6
  %119 = load <4 x i32>, ptr %115, align 4, !tbaa !6
  %120 = load <4 x i32>, ptr %116, align 4, !tbaa !6
  %121 = load <4 x i32>, ptr %117, align 4, !tbaa !6
  %122 = add nsw <4 x i32> %118, %110
  %123 = add nsw <4 x i32> %119, %111
  %124 = add nsw <4 x i32> %120, %112
  %125 = add nsw <4 x i32> %121, %113
  %126 = getelementptr inbounds i8, ptr %2, i64 256
  %127 = getelementptr inbounds i8, ptr %2, i64 272
  %128 = getelementptr inbounds i8, ptr %2, i64 288
  %129 = getelementptr inbounds i8, ptr %2, i64 304
  store <4 x i32> %122, ptr %126, align 4, !tbaa !6
  store <4 x i32> %123, ptr %127, align 4, !tbaa !6
  store <4 x i32> %124, ptr %128, align 4, !tbaa !6
  store <4 x i32> %125, ptr %129, align 4, !tbaa !6
  %130 = getelementptr inbounds i8, ptr %0, i64 320
  %131 = getelementptr inbounds i8, ptr %0, i64 336
  %132 = getelementptr inbounds i8, ptr %0, i64 352
  %133 = getelementptr inbounds i8, ptr %0, i64 368
  %134 = load <4 x i32>, ptr %130, align 4, !tbaa !6
  %135 = load <4 x i32>, ptr %131, align 4, !tbaa !6
  %136 = load <4 x i32>, ptr %132, align 4, !tbaa !6
  %137 = load <4 x i32>, ptr %133, align 4, !tbaa !6
  %138 = getelementptr inbounds i8, ptr %1, i64 320
  %139 = getelementptr inbounds i8, ptr %1, i64 336
  %140 = getelementptr inbounds i8, ptr %1, i64 352
  %141 = getelementptr inbounds i8, ptr %1, i64 368
  %142 = load <4 x i32>, ptr %138, align 4, !tbaa !6
  %143 = load <4 x i32>, ptr %139, align 4, !tbaa !6
  %144 = load <4 x i32>, ptr %140, align 4, !tbaa !6
  %145 = load <4 x i32>, ptr %141, align 4, !tbaa !6
  %146 = add nsw <4 x i32> %142, %134
  %147 = add nsw <4 x i32> %143, %135
  %148 = add nsw <4 x i32> %144, %136
  %149 = add nsw <4 x i32> %145, %137
  %150 = getelementptr inbounds i8, ptr %2, i64 320
  %151 = getelementptr inbounds i8, ptr %2, i64 336
  %152 = getelementptr inbounds i8, ptr %2, i64 352
  %153 = getelementptr inbounds i8, ptr %2, i64 368
  store <4 x i32> %146, ptr %150, align 4, !tbaa !6
  store <4 x i32> %147, ptr %151, align 4, !tbaa !6
  store <4 x i32> %148, ptr %152, align 4, !tbaa !6
  store <4 x i32> %149, ptr %153, align 4, !tbaa !6
  %154 = getelementptr inbounds i8, ptr %0, i64 384
  %155 = getelementptr inbounds i8, ptr %0, i64 400
  %156 = getelementptr inbounds i8, ptr %0, i64 416
  %157 = getelementptr inbounds i8, ptr %0, i64 432
  %158 = load <4 x i32>, ptr %154, align 4, !tbaa !6
  %159 = load <4 x i32>, ptr %155, align 4, !tbaa !6
  %160 = load <4 x i32>, ptr %156, align 4, !tbaa !6
  %161 = load <4 x i32>, ptr %157, align 4, !tbaa !6
  %162 = getelementptr inbounds i8, ptr %1, i64 384
  %163 = getelementptr inbounds i8, ptr %1, i64 400
  %164 = getelementptr inbounds i8, ptr %1, i64 416
  %165 = getelementptr inbounds i8, ptr %1, i64 432
  %166 = load <4 x i32>, ptr %162, align 4, !tbaa !6
  %167 = load <4 x i32>, ptr %163, align 4, !tbaa !6
  %168 = load <4 x i32>, ptr %164, align 4, !tbaa !6
  %169 = load <4 x i32>, ptr %165, align 4, !tbaa !6
  %170 = add nsw <4 x i32> %166, %158
  %171 = add nsw <4 x i32> %167, %159
  %172 = add nsw <4 x i32> %168, %160
  %173 = add nsw <4 x i32> %169, %161
  %174 = getelementptr inbounds i8, ptr %2, i64 384
  %175 = getelementptr inbounds i8, ptr %2, i64 400
  %176 = getelementptr inbounds i8, ptr %2, i64 416
  %177 = getelementptr inbounds i8, ptr %2, i64 432
  store <4 x i32> %170, ptr %174, align 4, !tbaa !6
  store <4 x i32> %171, ptr %175, align 4, !tbaa !6
  store <4 x i32> %172, ptr %176, align 4, !tbaa !6
  store <4 x i32> %173, ptr %177, align 4, !tbaa !6
  %178 = getelementptr inbounds i8, ptr %0, i64 448
  %179 = getelementptr inbounds i8, ptr %0, i64 464
  %180 = getelementptr inbounds i8, ptr %0, i64 480
  %181 = getelementptr inbounds i8, ptr %0, i64 496
  %182 = load <4 x i32>, ptr %178, align 4, !tbaa !6
  %183 = load <4 x i32>, ptr %179, align 4, !tbaa !6
  %184 = load <4 x i32>, ptr %180, align 4, !tbaa !6
  %185 = load <4 x i32>, ptr %181, align 4, !tbaa !6
  %186 = getelementptr inbounds i8, ptr %1, i64 448
  %187 = getelementptr inbounds i8, ptr %1, i64 464
  %188 = getelementptr inbounds i8, ptr %1, i64 480
  %189 = getelementptr inbounds i8, ptr %1, i64 496
  %190 = load <4 x i32>, ptr %186, align 4, !tbaa !6
  %191 = load <4 x i32>, ptr %187, align 4, !tbaa !6
  %192 = load <4 x i32>, ptr %188, align 4, !tbaa !6
  %193 = load <4 x i32>, ptr %189, align 4, !tbaa !6
  %194 = add nsw <4 x i32> %190, %182
  %195 = add nsw <4 x i32> %191, %183
  %196 = add nsw <4 x i32> %192, %184
  %197 = add nsw <4 x i32> %193, %185
  %198 = getelementptr inbounds i8, ptr %2, i64 448
  %199 = getelementptr inbounds i8, ptr %2, i64 464
  %200 = getelementptr inbounds i8, ptr %2, i64 480
  %201 = getelementptr inbounds i8, ptr %2, i64 496
  store <4 x i32> %194, ptr %198, align 4, !tbaa !6
  store <4 x i32> %195, ptr %199, align 4, !tbaa !6
  store <4 x i32> %196, ptr %200, align 4, !tbaa !6
  store <4 x i32> %197, ptr %201, align 4, !tbaa !6
  br label %202

202:                                              ; preds = %203, %12
  ret i32 0

203:                                              ; preds = %3, %203
  %204 = phi i64 [ %211, %203 ], [ 0, %3 ]
  %205 = getelementptr inbounds i32, ptr %0, i64 %204
  %206 = load i32, ptr %205, align 4, !tbaa !6
  %207 = getelementptr inbounds i32, ptr %1, i64 %204
  %208 = load i32, ptr %207, align 4, !tbaa !6
  %209 = add nsw i32 %208, %206
  %210 = getelementptr inbounds i32, ptr %2, i64 %204
  store i32 %209, ptr %210, align 4, !tbaa !6
  %211 = add nuw nsw i64 %204, 1
  %212 = icmp eq i64 %211, 128
  br i1 %212, label %202, label %203, !llvm.loop !10
}

; Function Attrs: nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable(sync)
define noundef i32 @vvadd128(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture noundef readonly %1, ptr noalias nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  %5 = getelementptr inbounds i8, ptr %0, i64 32
  %6 = getelementptr inbounds i8, ptr %0, i64 48
  %7 = load <4 x i32>, ptr %0, align 4, !tbaa !6
  %8 = load <4 x i32>, ptr %4, align 4, !tbaa !6
  %9 = load <4 x i32>, ptr %5, align 4, !tbaa !6
  %10 = load <4 x i32>, ptr %6, align 4, !tbaa !6
  %11 = getelementptr inbounds i8, ptr %1, i64 16
  %12 = getelementptr inbounds i8, ptr %1, i64 32
  %13 = getelementptr inbounds i8, ptr %1, i64 48
  %14 = load <4 x i32>, ptr %1, align 4, !tbaa !6
  %15 = load <4 x i32>, ptr %11, align 4, !tbaa !6
  %16 = load <4 x i32>, ptr %12, align 4, !tbaa !6
  %17 = load <4 x i32>, ptr %13, align 4, !tbaa !6
  %18 = add nsw <4 x i32> %14, %7
  %19 = add nsw <4 x i32> %15, %8
  %20 = add nsw <4 x i32> %16, %9
  %21 = add nsw <4 x i32> %17, %10
  %22 = getelementptr inbounds i8, ptr %2, i64 16
  %23 = getelementptr inbounds i8, ptr %2, i64 32
  %24 = getelementptr inbounds i8, ptr %2, i64 48
  store <4 x i32> %18, ptr %2, align 4, !tbaa !6
  store <4 x i32> %19, ptr %22, align 4, !tbaa !6
  store <4 x i32> %20, ptr %23, align 4, !tbaa !6
  store <4 x i32> %21, ptr %24, align 4, !tbaa !6
  %25 = getelementptr inbounds i8, ptr %0, i64 64
  %26 = getelementptr inbounds i8, ptr %0, i64 80
  %27 = getelementptr inbounds i8, ptr %0, i64 96
  %28 = getelementptr inbounds i8, ptr %0, i64 112
  %29 = load <4 x i32>, ptr %25, align 4, !tbaa !6
  %30 = load <4 x i32>, ptr %26, align 4, !tbaa !6
  %31 = load <4 x i32>, ptr %27, align 4, !tbaa !6
  %32 = load <4 x i32>, ptr %28, align 4, !tbaa !6
  %33 = getelementptr inbounds i8, ptr %1, i64 64
  %34 = getelementptr inbounds i8, ptr %1, i64 80
  %35 = getelementptr inbounds i8, ptr %1, i64 96
  %36 = getelementptr inbounds i8, ptr %1, i64 112
  %37 = load <4 x i32>, ptr %33, align 4, !tbaa !6
  %38 = load <4 x i32>, ptr %34, align 4, !tbaa !6
  %39 = load <4 x i32>, ptr %35, align 4, !tbaa !6
  %40 = load <4 x i32>, ptr %36, align 4, !tbaa !6
  %41 = add nsw <4 x i32> %37, %29
  %42 = add nsw <4 x i32> %38, %30
  %43 = add nsw <4 x i32> %39, %31
  %44 = add nsw <4 x i32> %40, %32
  %45 = getelementptr inbounds i8, ptr %2, i64 64
  %46 = getelementptr inbounds i8, ptr %2, i64 80
  %47 = getelementptr inbounds i8, ptr %2, i64 96
  %48 = getelementptr inbounds i8, ptr %2, i64 112
  store <4 x i32> %41, ptr %45, align 4, !tbaa !6
  store <4 x i32> %42, ptr %46, align 4, !tbaa !6
  store <4 x i32> %43, ptr %47, align 4, !tbaa !6
  store <4 x i32> %44, ptr %48, align 4, !tbaa !6
  %49 = getelementptr inbounds i8, ptr %0, i64 128
  %50 = getelementptr inbounds i8, ptr %0, i64 144
  %51 = getelementptr inbounds i8, ptr %0, i64 160
  %52 = getelementptr inbounds i8, ptr %0, i64 176
  %53 = load <4 x i32>, ptr %49, align 4, !tbaa !6
  %54 = load <4 x i32>, ptr %50, align 4, !tbaa !6
  %55 = load <4 x i32>, ptr %51, align 4, !tbaa !6
  %56 = load <4 x i32>, ptr %52, align 4, !tbaa !6
  %57 = getelementptr inbounds i8, ptr %1, i64 128
  %58 = getelementptr inbounds i8, ptr %1, i64 144
  %59 = getelementptr inbounds i8, ptr %1, i64 160
  %60 = getelementptr inbounds i8, ptr %1, i64 176
  %61 = load <4 x i32>, ptr %57, align 4, !tbaa !6
  %62 = load <4 x i32>, ptr %58, align 4, !tbaa !6
  %63 = load <4 x i32>, ptr %59, align 4, !tbaa !6
  %64 = load <4 x i32>, ptr %60, align 4, !tbaa !6
  %65 = add nsw <4 x i32> %61, %53
  %66 = add nsw <4 x i32> %62, %54
  %67 = add nsw <4 x i32> %63, %55
  %68 = add nsw <4 x i32> %64, %56
  %69 = getelementptr inbounds i8, ptr %2, i64 128
  %70 = getelementptr inbounds i8, ptr %2, i64 144
  %71 = getelementptr inbounds i8, ptr %2, i64 160
  %72 = getelementptr inbounds i8, ptr %2, i64 176
  store <4 x i32> %65, ptr %69, align 4, !tbaa !6
  store <4 x i32> %66, ptr %70, align 4, !tbaa !6
  store <4 x i32> %67, ptr %71, align 4, !tbaa !6
  store <4 x i32> %68, ptr %72, align 4, !tbaa !6
  %73 = getelementptr inbounds i8, ptr %0, i64 192
  %74 = getelementptr inbounds i8, ptr %0, i64 208
  %75 = getelementptr inbounds i8, ptr %0, i64 224
  %76 = getelementptr inbounds i8, ptr %0, i64 240
  %77 = load <4 x i32>, ptr %73, align 4, !tbaa !6
  %78 = load <4 x i32>, ptr %74, align 4, !tbaa !6
  %79 = load <4 x i32>, ptr %75, align 4, !tbaa !6
  %80 = load <4 x i32>, ptr %76, align 4, !tbaa !6
  %81 = getelementptr inbounds i8, ptr %1, i64 192
  %82 = getelementptr inbounds i8, ptr %1, i64 208
  %83 = getelementptr inbounds i8, ptr %1, i64 224
  %84 = getelementptr inbounds i8, ptr %1, i64 240
  %85 = load <4 x i32>, ptr %81, align 4, !tbaa !6
  %86 = load <4 x i32>, ptr %82, align 4, !tbaa !6
  %87 = load <4 x i32>, ptr %83, align 4, !tbaa !6
  %88 = load <4 x i32>, ptr %84, align 4, !tbaa !6
  %89 = add nsw <4 x i32> %85, %77
  %90 = add nsw <4 x i32> %86, %78
  %91 = add nsw <4 x i32> %87, %79
  %92 = add nsw <4 x i32> %88, %80
  %93 = getelementptr inbounds i8, ptr %2, i64 192
  %94 = getelementptr inbounds i8, ptr %2, i64 208
  %95 = getelementptr inbounds i8, ptr %2, i64 224
  %96 = getelementptr inbounds i8, ptr %2, i64 240
  store <4 x i32> %89, ptr %93, align 4, !tbaa !6
  store <4 x i32> %90, ptr %94, align 4, !tbaa !6
  store <4 x i32> %91, ptr %95, align 4, !tbaa !6
  store <4 x i32> %92, ptr %96, align 4, !tbaa !6
  %97 = getelementptr inbounds i8, ptr %0, i64 256
  %98 = getelementptr inbounds i8, ptr %0, i64 272
  %99 = getelementptr inbounds i8, ptr %0, i64 288
  %100 = getelementptr inbounds i8, ptr %0, i64 304
  %101 = load <4 x i32>, ptr %97, align 4, !tbaa !6
  %102 = load <4 x i32>, ptr %98, align 4, !tbaa !6
  %103 = load <4 x i32>, ptr %99, align 4, !tbaa !6
  %104 = load <4 x i32>, ptr %100, align 4, !tbaa !6
  %105 = getelementptr inbounds i8, ptr %1, i64 256
  %106 = getelementptr inbounds i8, ptr %1, i64 272
  %107 = getelementptr inbounds i8, ptr %1, i64 288
  %108 = getelementptr inbounds i8, ptr %1, i64 304
  %109 = load <4 x i32>, ptr %105, align 4, !tbaa !6
  %110 = load <4 x i32>, ptr %106, align 4, !tbaa !6
  %111 = load <4 x i32>, ptr %107, align 4, !tbaa !6
  %112 = load <4 x i32>, ptr %108, align 4, !tbaa !6
  %113 = add nsw <4 x i32> %109, %101
  %114 = add nsw <4 x i32> %110, %102
  %115 = add nsw <4 x i32> %111, %103
  %116 = add nsw <4 x i32> %112, %104
  %117 = getelementptr inbounds i8, ptr %2, i64 256
  %118 = getelementptr inbounds i8, ptr %2, i64 272
  %119 = getelementptr inbounds i8, ptr %2, i64 288
  %120 = getelementptr inbounds i8, ptr %2, i64 304
  store <4 x i32> %113, ptr %117, align 4, !tbaa !6
  store <4 x i32> %114, ptr %118, align 4, !tbaa !6
  store <4 x i32> %115, ptr %119, align 4, !tbaa !6
  store <4 x i32> %116, ptr %120, align 4, !tbaa !6
  %121 = getelementptr inbounds i8, ptr %0, i64 320
  %122 = getelementptr inbounds i8, ptr %0, i64 336
  %123 = getelementptr inbounds i8, ptr %0, i64 352
  %124 = getelementptr inbounds i8, ptr %0, i64 368
  %125 = load <4 x i32>, ptr %121, align 4, !tbaa !6
  %126 = load <4 x i32>, ptr %122, align 4, !tbaa !6
  %127 = load <4 x i32>, ptr %123, align 4, !tbaa !6
  %128 = load <4 x i32>, ptr %124, align 4, !tbaa !6
  %129 = getelementptr inbounds i8, ptr %1, i64 320
  %130 = getelementptr inbounds i8, ptr %1, i64 336
  %131 = getelementptr inbounds i8, ptr %1, i64 352
  %132 = getelementptr inbounds i8, ptr %1, i64 368
  %133 = load <4 x i32>, ptr %129, align 4, !tbaa !6
  %134 = load <4 x i32>, ptr %130, align 4, !tbaa !6
  %135 = load <4 x i32>, ptr %131, align 4, !tbaa !6
  %136 = load <4 x i32>, ptr %132, align 4, !tbaa !6
  %137 = add nsw <4 x i32> %133, %125
  %138 = add nsw <4 x i32> %134, %126
  %139 = add nsw <4 x i32> %135, %127
  %140 = add nsw <4 x i32> %136, %128
  %141 = getelementptr inbounds i8, ptr %2, i64 320
  %142 = getelementptr inbounds i8, ptr %2, i64 336
  %143 = getelementptr inbounds i8, ptr %2, i64 352
  %144 = getelementptr inbounds i8, ptr %2, i64 368
  store <4 x i32> %137, ptr %141, align 4, !tbaa !6
  store <4 x i32> %138, ptr %142, align 4, !tbaa !6
  store <4 x i32> %139, ptr %143, align 4, !tbaa !6
  store <4 x i32> %140, ptr %144, align 4, !tbaa !6
  %145 = getelementptr inbounds i8, ptr %0, i64 384
  %146 = getelementptr inbounds i8, ptr %0, i64 400
  %147 = getelementptr inbounds i8, ptr %0, i64 416
  %148 = getelementptr inbounds i8, ptr %0, i64 432
  %149 = load <4 x i32>, ptr %145, align 4, !tbaa !6
  %150 = load <4 x i32>, ptr %146, align 4, !tbaa !6
  %151 = load <4 x i32>, ptr %147, align 4, !tbaa !6
  %152 = load <4 x i32>, ptr %148, align 4, !tbaa !6
  %153 = getelementptr inbounds i8, ptr %1, i64 384
  %154 = getelementptr inbounds i8, ptr %1, i64 400
  %155 = getelementptr inbounds i8, ptr %1, i64 416
  %156 = getelementptr inbounds i8, ptr %1, i64 432
  %157 = load <4 x i32>, ptr %153, align 4, !tbaa !6
  %158 = load <4 x i32>, ptr %154, align 4, !tbaa !6
  %159 = load <4 x i32>, ptr %155, align 4, !tbaa !6
  %160 = load <4 x i32>, ptr %156, align 4, !tbaa !6
  %161 = add nsw <4 x i32> %157, %149
  %162 = add nsw <4 x i32> %158, %150
  %163 = add nsw <4 x i32> %159, %151
  %164 = add nsw <4 x i32> %160, %152
  %165 = getelementptr inbounds i8, ptr %2, i64 384
  %166 = getelementptr inbounds i8, ptr %2, i64 400
  %167 = getelementptr inbounds i8, ptr %2, i64 416
  %168 = getelementptr inbounds i8, ptr %2, i64 432
  store <4 x i32> %161, ptr %165, align 4, !tbaa !6
  store <4 x i32> %162, ptr %166, align 4, !tbaa !6
  store <4 x i32> %163, ptr %167, align 4, !tbaa !6
  store <4 x i32> %164, ptr %168, align 4, !tbaa !6
  %169 = getelementptr inbounds i8, ptr %0, i64 448
  %170 = getelementptr inbounds i8, ptr %0, i64 464
  %171 = getelementptr inbounds i8, ptr %0, i64 480
  %172 = getelementptr inbounds i8, ptr %0, i64 496
  %173 = load <4 x i32>, ptr %169, align 4, !tbaa !6
  %174 = load <4 x i32>, ptr %170, align 4, !tbaa !6
  %175 = load <4 x i32>, ptr %171, align 4, !tbaa !6
  %176 = load <4 x i32>, ptr %172, align 4, !tbaa !6
  %177 = getelementptr inbounds i8, ptr %1, i64 448
  %178 = getelementptr inbounds i8, ptr %1, i64 464
  %179 = getelementptr inbounds i8, ptr %1, i64 480
  %180 = getelementptr inbounds i8, ptr %1, i64 496
  %181 = load <4 x i32>, ptr %177, align 4, !tbaa !6
  %182 = load <4 x i32>, ptr %178, align 4, !tbaa !6
  %183 = load <4 x i32>, ptr %179, align 4, !tbaa !6
  %184 = load <4 x i32>, ptr %180, align 4, !tbaa !6
  %185 = add nsw <4 x i32> %181, %173
  %186 = add nsw <4 x i32> %182, %174
  %187 = add nsw <4 x i32> %183, %175
  %188 = add nsw <4 x i32> %184, %176
  %189 = getelementptr inbounds i8, ptr %2, i64 448
  %190 = getelementptr inbounds i8, ptr %2, i64 464
  %191 = getelementptr inbounds i8, ptr %2, i64 480
  %192 = getelementptr inbounds i8, ptr %2, i64 496
  store <4 x i32> %185, ptr %189, align 4, !tbaa !6
  store <4 x i32> %186, ptr %190, align 4, !tbaa !6
  store <4 x i32> %187, ptr %191, align 4, !tbaa !6
  store <4 x i32> %188, ptr %192, align 4, !tbaa !6
  ret i32 0
}

attributes #0 = { nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+bti,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 15, i32 5]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Apple clang version 17.0.0 (clang-1700.0.13.5)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}

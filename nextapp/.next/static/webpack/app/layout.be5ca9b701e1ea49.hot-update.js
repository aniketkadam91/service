"use strict";
/*
 * ATTENTION: An "eval-source-map" devtool has been used.
 * This devtool is neither made for production nor for readable output files.
 * It uses "eval()" calls to create a separate source file with attached SourceMaps in the browser devtools.
 * If you are trying to read the output file, select a different devtool (https://webpack.js.org/configuration/devtool/)
 * or disable the default devtool with "devtool: false".
 * If you are looking for production-ready output files, see mode: "production" (https://webpack.js.org/configuration/mode/).
 */
self["webpackHotUpdate_N_E"]("app/layout",{

/***/ "(app-pages-browser)/./app/redux/reducer/login.js":
/*!************************************!*\
  !*** ./app/redux/reducer/login.js ***!
  \************************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

eval(__webpack_require__.ts("__webpack_require__.r(__webpack_exports__);\n/* harmony export */ __webpack_require__.d(__webpack_exports__, {\n/* harmony export */   login: function() { return /* binding */ login; },\n/* harmony export */   loginuser: function() { return /* binding */ loginuser; },\n/* harmony export */   logout: function() { return /* binding */ logout; }\n/* harmony export */ });\n/* harmony import */ var _reduxjs_toolkit__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @reduxjs/toolkit */ \"(app-pages-browser)/./node_modules/@reduxjs/toolkit/dist/redux-toolkit.modern.mjs\");\n\nlet loginState = localStorage.getItem(\"token\");\nlet initialStateVal = false;\nif (loginState) {\n    initialStateVal = initialStateVal;\n}\nconsole.log(\"initial state\", initialStateVal);\nconst login = (0,_reduxjs_toolkit__WEBPACK_IMPORTED_MODULE_0__.createSlice)({\n    name: \"login\",\n    initialState: {\n        isUserLoggedIn: false\n    },\n    reducers: {\n        loginuser: (state)=>{\n            state.isUserLoggedIn = true;\n        },\n        logout: (state)=>{\n            state.isUserLoggedIn = false;\n        }\n    }\n});\nconst { loginuser, logout } = login.actions;\n/* harmony default export */ __webpack_exports__[\"default\"] = (login.reducer);\n\n\n;\n    // Wrapped in an IIFE to avoid polluting the global scope\n    ;\n    (function () {\n        var _a, _b;\n        // Legacy CSS implementations will `eval` browser code in a Node.js context\n        // to extract CSS. For backwards compatibility, we need to check we're in a\n        // browser context before continuing.\n        if (typeof self !== 'undefined' &&\n            // AMP / No-JS mode does not inject these helpers:\n            '$RefreshHelpers$' in self) {\n            // @ts-ignore __webpack_module__ is global\n            var currentExports = module.exports;\n            // @ts-ignore __webpack_module__ is global\n            var prevSignature = (_b = (_a = module.hot.data) === null || _a === void 0 ? void 0 : _a.prevSignature) !== null && _b !== void 0 ? _b : null;\n            // This cannot happen in MainTemplate because the exports mismatch between\n            // templating and execution.\n            self.$RefreshHelpers$.registerExportsForReactRefresh(currentExports, module.id);\n            // A module can be accepted automatically based on its exports, e.g. when\n            // it is a Refresh Boundary.\n            if (self.$RefreshHelpers$.isReactRefreshBoundary(currentExports)) {\n                // Save the previous exports signature on update so we can compare the boundary\n                // signatures. We avoid saving exports themselves since it causes memory leaks (https://github.com/vercel/next.js/pull/53797)\n                module.hot.dispose(function (data) {\n                    data.prevSignature =\n                        self.$RefreshHelpers$.getRefreshBoundarySignature(currentExports);\n                });\n                // Unconditionally accept an update to this module, we'll check if it's\n                // still a Refresh Boundary later.\n                // @ts-ignore importMeta is replaced in the loader\n                module.hot.accept();\n                // This field is set when the previous version of this module was a\n                // Refresh Boundary, letting us know we need to check for invalidation or\n                // enqueue an update.\n                if (prevSignature !== null) {\n                    // A boundary can become ineligible if its exports are incompatible\n                    // with the previous exports.\n                    //\n                    // For example, if you add/remove/change exports, we'll want to\n                    // re-execute the importing modules, and force those components to\n                    // re-render. Similarly, if you convert a class component to a\n                    // function, we want to invalidate the boundary.\n                    if (self.$RefreshHelpers$.shouldInvalidateReactRefreshBoundary(prevSignature, self.$RefreshHelpers$.getRefreshBoundarySignature(currentExports))) {\n                        module.hot.invalidate();\n                    }\n                    else {\n                        self.$RefreshHelpers$.scheduleUpdate();\n                    }\n                }\n            }\n            else {\n                // Since we just executed the code for the module, it's possible that the\n                // new exports made it ineligible for being a boundary.\n                // We only care about the case when we were _previously_ a boundary,\n                // because we already accepted this update (accidental side effect).\n                var isNoLongerABoundary = prevSignature !== null;\n                if (isNoLongerABoundary) {\n                    module.hot.invalidate();\n                }\n            }\n        }\n    })();\n//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiKGFwcC1wYWdlcy1icm93c2VyKS8uL2FwcC9yZWR1eC9yZWR1Y2VyL2xvZ2luLmpzIiwibWFwcGluZ3MiOiI7Ozs7Ozs7QUFBK0M7QUFFL0MsSUFBSUMsYUFBYUMsYUFBYUMsT0FBTyxDQUFDO0FBQ3RDLElBQUlDLGtCQUFrQjtBQUV0QixJQUFJSCxZQUFZO0lBQ2RHLGtCQUFrQkE7QUFDcEI7QUFFQUMsUUFBUUMsR0FBRyxDQUFDLGlCQUFpQkY7QUFFdEIsTUFBTUcsUUFBUVAsNkRBQVdBLENBQUM7SUFDL0JRLE1BQU07SUFDTkMsY0FBYztRQUNaQyxnQkFBZ0I7SUFDbEI7SUFDQUMsVUFBVTtRQUNSQyxXQUFXLENBQUNDO1lBQ1ZBLE1BQU1ILGNBQWMsR0FBRztRQUN6QjtRQUNBSSxRQUFRLENBQUNEO1lBQ1BBLE1BQU1ILGNBQWMsR0FBRztRQUN6QjtJQUNGO0FBQ0YsR0FBRztBQUVJLE1BQU0sRUFBRUUsU0FBUyxFQUFFRSxNQUFNLEVBQUUsR0FBR1AsTUFBTVEsT0FBTyxDQUFDO0FBQ25ELCtEQUFlUixNQUFNUyxPQUFPLEVBQUMiLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly9fTl9FLy4vYXBwL3JlZHV4L3JlZHVjZXIvbG9naW4uanM/NjNjOCJdLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyBjcmVhdGVTbGljZSB9IGZyb20gXCJAcmVkdXhqcy90b29sa2l0XCI7XHJcblxyXG5sZXQgbG9naW5TdGF0ZSA9IGxvY2FsU3RvcmFnZS5nZXRJdGVtKFwidG9rZW5cIik7XHJcbmxldCBpbml0aWFsU3RhdGVWYWwgPSBmYWxzZTtcclxuXHJcbmlmIChsb2dpblN0YXRlKSB7XHJcbiAgaW5pdGlhbFN0YXRlVmFsID0gaW5pdGlhbFN0YXRlVmFsO1xyXG59XHJcblxyXG5jb25zb2xlLmxvZyhcImluaXRpYWwgc3RhdGVcIiwgaW5pdGlhbFN0YXRlVmFsKTtcclxuXHJcbmV4cG9ydCBjb25zdCBsb2dpbiA9IGNyZWF0ZVNsaWNlKHtcclxuICBuYW1lOiBcImxvZ2luXCIsXHJcbiAgaW5pdGlhbFN0YXRlOiB7XHJcbiAgICBpc1VzZXJMb2dnZWRJbjogZmFsc2UsXHJcbiAgfSxcclxuICByZWR1Y2Vyczoge1xyXG4gICAgbG9naW51c2VyOiAoc3RhdGUpID0+IHtcclxuICAgICAgc3RhdGUuaXNVc2VyTG9nZ2VkSW4gPSB0cnVlO1xyXG4gICAgfSxcclxuICAgIGxvZ291dDogKHN0YXRlKSA9PiB7XHJcbiAgICAgIHN0YXRlLmlzVXNlckxvZ2dlZEluID0gZmFsc2U7XHJcbiAgICB9LFxyXG4gIH0sXHJcbn0pO1xyXG5cclxuZXhwb3J0IGNvbnN0IHsgbG9naW51c2VyLCBsb2dvdXQgfSA9IGxvZ2luLmFjdGlvbnM7XHJcbmV4cG9ydCBkZWZhdWx0IGxvZ2luLnJlZHVjZXI7XHJcbiJdLCJuYW1lcyI6WyJjcmVhdGVTbGljZSIsImxvZ2luU3RhdGUiLCJsb2NhbFN0b3JhZ2UiLCJnZXRJdGVtIiwiaW5pdGlhbFN0YXRlVmFsIiwiY29uc29sZSIsImxvZyIsImxvZ2luIiwibmFtZSIsImluaXRpYWxTdGF0ZSIsImlzVXNlckxvZ2dlZEluIiwicmVkdWNlcnMiLCJsb2dpbnVzZXIiLCJzdGF0ZSIsImxvZ291dCIsImFjdGlvbnMiLCJyZWR1Y2VyIl0sInNvdXJjZVJvb3QiOiIifQ==\n//# sourceURL=webpack-internal:///(app-pages-browser)/./app/redux/reducer/login.js\n"));

/***/ })

});
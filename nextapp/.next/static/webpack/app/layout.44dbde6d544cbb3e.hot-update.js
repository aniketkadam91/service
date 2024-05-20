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

/***/ "(app-pages-browser)/./app/component/Activity.js":
/*!***********************************!*\
  !*** ./app/component/Activity.js ***!
  \***********************************/
/***/ (function(module, __webpack_exports__, __webpack_require__) {

eval(__webpack_require__.ts("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! react/jsx-dev-runtime */ \"(app-pages-browser)/./node_modules/next/dist/compiled/react/jsx-dev-runtime.js\");\n/* harmony import */ var activity_detector__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! activity-detector */ \"(app-pages-browser)/./node_modules/activity-detector/dist/activity-detector.js\");\n/* harmony import */ var react_redux__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! react-redux */ \"(app-pages-browser)/./node_modules/react-redux/dist/react-redux.mjs\");\n/* harmony import */ var _redux_reducer_login__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../redux/reducer/login */ \"(app-pages-browser)/./app/redux/reducer/login.js\");\n/* harmony import */ var next_navigation__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! next/navigation */ \"(app-pages-browser)/./node_modules/next/navigation.js\");\n/* harmony import */ var next_navigation__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(next_navigation__WEBPACK_IMPORTED_MODULE_3__);\n/* __next_internal_client_entry_do_not_use__ default auto */ \nvar _s = $RefreshSig$();\n\n\n\n\n\nconst Activity = ()=>{\n    _s();\n    const dispatch = (0,react_redux__WEBPACK_IMPORTED_MODULE_4__.useDispatch)();\n    const router = (0,next_navigation__WEBPACK_IMPORTED_MODULE_3__.useRouter)();\n    const isUserLoggedIn = (0,react_redux__WEBPACK_IMPORTED_MODULE_4__.useSelector)((state)=>state.login.isUserLoggedIn);\n    const activityDetector = (0,activity_detector__WEBPACK_IMPORTED_MODULE_1__[\"default\"])({\n        timeToIdle: 300000\n    });\n    activityDetector.on(\"idle\", ()=>{\n        console.log(\"The user is not interacting with the page\");\n        console.log(document.visibilityState);\n        if (isUserLoggedIn) {\n            console.log(\"its still enterd\");\n            dispatch((0,_redux_reducer_login__WEBPACK_IMPORTED_MODULE_2__.logout)());\n            localStorage.removeItem(\"token\");\n            setTimeout(()=>{\n                router.push(\"/\");\n            }, 5000);\n        }\n    });\n    return /*#__PURE__*/ (0,react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.jsxDEV)(react_jsx_dev_runtime__WEBPACK_IMPORTED_MODULE_0__.Fragment, {}, void 0, false);\n};\n_s(Activity, \"mASsvU4tHRHFse9vyTFm9PNRRKY=\", false, function() {\n    return [\n        react_redux__WEBPACK_IMPORTED_MODULE_4__.useDispatch,\n        next_navigation__WEBPACK_IMPORTED_MODULE_3__.useRouter,\n        react_redux__WEBPACK_IMPORTED_MODULE_4__.useSelector\n    ];\n});\n_c = Activity;\n/* harmony default export */ __webpack_exports__[\"default\"] = (Activity);\nvar _c;\n$RefreshReg$(_c, \"Activity\");\n\n\n;\n    // Wrapped in an IIFE to avoid polluting the global scope\n    ;\n    (function () {\n        var _a, _b;\n        // Legacy CSS implementations will `eval` browser code in a Node.js context\n        // to extract CSS. For backwards compatibility, we need to check we're in a\n        // browser context before continuing.\n        if (typeof self !== 'undefined' &&\n            // AMP / No-JS mode does not inject these helpers:\n            '$RefreshHelpers$' in self) {\n            // @ts-ignore __webpack_module__ is global\n            var currentExports = module.exports;\n            // @ts-ignore __webpack_module__ is global\n            var prevSignature = (_b = (_a = module.hot.data) === null || _a === void 0 ? void 0 : _a.prevSignature) !== null && _b !== void 0 ? _b : null;\n            // This cannot happen in MainTemplate because the exports mismatch between\n            // templating and execution.\n            self.$RefreshHelpers$.registerExportsForReactRefresh(currentExports, module.id);\n            // A module can be accepted automatically based on its exports, e.g. when\n            // it is a Refresh Boundary.\n            if (self.$RefreshHelpers$.isReactRefreshBoundary(currentExports)) {\n                // Save the previous exports signature on update so we can compare the boundary\n                // signatures. We avoid saving exports themselves since it causes memory leaks (https://github.com/vercel/next.js/pull/53797)\n                module.hot.dispose(function (data) {\n                    data.prevSignature =\n                        self.$RefreshHelpers$.getRefreshBoundarySignature(currentExports);\n                });\n                // Unconditionally accept an update to this module, we'll check if it's\n                // still a Refresh Boundary later.\n                // @ts-ignore importMeta is replaced in the loader\n                module.hot.accept();\n                // This field is set when the previous version of this module was a\n                // Refresh Boundary, letting us know we need to check for invalidation or\n                // enqueue an update.\n                if (prevSignature !== null) {\n                    // A boundary can become ineligible if its exports are incompatible\n                    // with the previous exports.\n                    //\n                    // For example, if you add/remove/change exports, we'll want to\n                    // re-execute the importing modules, and force those components to\n                    // re-render. Similarly, if you convert a class component to a\n                    // function, we want to invalidate the boundary.\n                    if (self.$RefreshHelpers$.shouldInvalidateReactRefreshBoundary(prevSignature, self.$RefreshHelpers$.getRefreshBoundarySignature(currentExports))) {\n                        module.hot.invalidate();\n                    }\n                    else {\n                        self.$RefreshHelpers$.scheduleUpdate();\n                    }\n                }\n            }\n            else {\n                // Since we just executed the code for the module, it's possible that the\n                // new exports made it ineligible for being a boundary.\n                // We only care about the case when we were _previously_ a boundary,\n                // because we already accepted this update (accidental side effect).\n                var isNoLongerABoundary = prevSignature !== null;\n                if (isNoLongerABoundary) {\n                    module.hot.invalidate();\n                }\n            }\n        }\n    })();\n//# sourceURL=[module]\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiKGFwcC1wYWdlcy1icm93c2VyKS8uL2FwcC9jb21wb25lbnQvQWN0aXZpdHkuanMiLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7O0FBQ3VEO0FBQ2I7QUFDQTtBQUNNO0FBQ0o7QUFFNUMsTUFBTUssV0FBVzs7SUFDZixNQUFNQyxXQUFXSix3REFBV0E7SUFDNUIsTUFBTUssU0FBU0gsMERBQVNBO0lBQ3hCLE1BQU1JLGlCQUFpQlAsd0RBQVdBLENBQUMsQ0FBQ1EsUUFBVUEsTUFBTUMsS0FBSyxDQUFDRixjQUFjO0lBQ3hFLE1BQU1HLG1CQUFtQlgsNkRBQXNCQSxDQUFDO1FBQzlDWSxZQUFZO0lBQ2Q7SUFFQUQsaUJBQWlCRSxFQUFFLENBQUMsUUFBUTtRQUMxQkMsUUFBUUMsR0FBRyxDQUFDO1FBRVpELFFBQVFDLEdBQUcsQ0FBQ0MsU0FBU0MsZUFBZTtRQUVwQyxJQUFJVCxnQkFBZ0I7WUFDbEJNLFFBQVFDLEdBQUcsQ0FBQztZQUNaVCxTQUFTSCw0REFBTUE7WUFDZmUsYUFBYUMsVUFBVSxDQUFDO1lBQ3hCQyxXQUFXO2dCQUNUYixPQUFPYyxJQUFJLENBQUM7WUFDZCxHQUFHO1FBQ0w7SUFDRjtJQUVBLHFCQUFPO0FBQ1Q7R0F4Qk1oQjs7UUFDYUgsb0RBQVdBO1FBQ2JFLHNEQUFTQTtRQUNESCxvREFBV0E7OztLQUg5Qkk7QUEwQk4sK0RBQWVBLFFBQVFBLEVBQUMiLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly9fTl9FLy4vYXBwL2NvbXBvbmVudC9BY3Rpdml0eS5qcz9jZTE3Il0sInNvdXJjZXNDb250ZW50IjpbIlwidXNlIGNsaWVudFwiO1xyXG5pbXBvcnQgY3JlYXRlQWN0aXZpdHlEZXRlY3RvciBmcm9tIFwiYWN0aXZpdHktZGV0ZWN0b3JcIjtcclxuaW1wb3J0IHsgdXNlU2VsZWN0b3IgfSBmcm9tIFwicmVhY3QtcmVkdXhcIjtcclxuaW1wb3J0IHsgdXNlRGlzcGF0Y2ggfSBmcm9tIFwicmVhY3QtcmVkdXhcIjtcclxuaW1wb3J0IHsgbG9nb3V0IH0gZnJvbSBcIi4uL3JlZHV4L3JlZHVjZXIvbG9naW5cIjtcclxuaW1wb3J0IHsgdXNlUm91dGVyIH0gZnJvbSBcIm5leHQvbmF2aWdhdGlvblwiO1xyXG5cclxuY29uc3QgQWN0aXZpdHkgPSAoKSA9PiB7XHJcbiAgY29uc3QgZGlzcGF0Y2ggPSB1c2VEaXNwYXRjaCgpO1xyXG4gIGNvbnN0IHJvdXRlciA9IHVzZVJvdXRlcigpO1xyXG4gIGNvbnN0IGlzVXNlckxvZ2dlZEluID0gdXNlU2VsZWN0b3IoKHN0YXRlKSA9PiBzdGF0ZS5sb2dpbi5pc1VzZXJMb2dnZWRJbik7XHJcbiAgY29uc3QgYWN0aXZpdHlEZXRlY3RvciA9IGNyZWF0ZUFjdGl2aXR5RGV0ZWN0b3Ioe1xyXG4gICAgdGltZVRvSWRsZTogMzAwMDAwLCAvLyB3YWl0IDUgbWluaXRzIG9mIGluYWN0aXZpdHkgdG8gY29uc2lkZXIgdGhlIHVzZXIgaXMgaWRsZVxyXG4gIH0pO1xyXG5cclxuICBhY3Rpdml0eURldGVjdG9yLm9uKFwiaWRsZVwiLCAoKSA9PiB7XHJcbiAgICBjb25zb2xlLmxvZyhcIlRoZSB1c2VyIGlzIG5vdCBpbnRlcmFjdGluZyB3aXRoIHRoZSBwYWdlXCIpO1xyXG5cclxuICAgIGNvbnNvbGUubG9nKGRvY3VtZW50LnZpc2liaWxpdHlTdGF0ZSk7XHJcblxyXG4gICAgaWYgKGlzVXNlckxvZ2dlZEluKSB7XHJcbiAgICAgIGNvbnNvbGUubG9nKFwiaXRzIHN0aWxsIGVudGVyZFwiKTtcclxuICAgICAgZGlzcGF0Y2gobG9nb3V0KCkpO1xyXG4gICAgICBsb2NhbFN0b3JhZ2UucmVtb3ZlSXRlbShcInRva2VuXCIpO1xyXG4gICAgICBzZXRUaW1lb3V0KCgpID0+IHtcclxuICAgICAgICByb3V0ZXIucHVzaChcIi9cIik7XHJcbiAgICAgIH0sIDUwMDApO1xyXG4gICAgfVxyXG4gIH0pO1xyXG5cclxuICByZXR1cm4gPD48Lz47XHJcbn07XHJcblxyXG5leHBvcnQgZGVmYXVsdCBBY3Rpdml0eTtcclxuIl0sIm5hbWVzIjpbImNyZWF0ZUFjdGl2aXR5RGV0ZWN0b3IiLCJ1c2VTZWxlY3RvciIsInVzZURpc3BhdGNoIiwibG9nb3V0IiwidXNlUm91dGVyIiwiQWN0aXZpdHkiLCJkaXNwYXRjaCIsInJvdXRlciIsImlzVXNlckxvZ2dlZEluIiwic3RhdGUiLCJsb2dpbiIsImFjdGl2aXR5RGV0ZWN0b3IiLCJ0aW1lVG9JZGxlIiwib24iLCJjb25zb2xlIiwibG9nIiwiZG9jdW1lbnQiLCJ2aXNpYmlsaXR5U3RhdGUiLCJsb2NhbFN0b3JhZ2UiLCJyZW1vdmVJdGVtIiwic2V0VGltZW91dCIsInB1c2giXSwic291cmNlUm9vdCI6IiJ9\n//# sourceURL=webpack-internal:///(app-pages-browser)/./app/component/Activity.js\n"));

/***/ })

});